unit OPCutils;

{$IFDEF VER150}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_TYPE OFF}
{$ENDIF}

interface

uses
{$IFDEF VER140}
  Variants,
{$ENDIF}
{$IFDEF VER150}
  Variants,
{$ENDIF}
  Windows, SysUtils,{ prOPCUtils,} classes, ActiveX, OPCtypes, OPCDA, OPCEdit, QForms;

type PList = ^TList;

function ServerAddGroup(ServerIf: IOPCServer; Name: string; Active: BOOL;
          UpdateRate: DWORD; ClientHandle: OPCHANDLE; var GroupIf: IOPCItemMgt;
          var ServerHandle: OPCHANDLE): HResult;
function GroupAddItem(GroupIf: IOPCItemMgt; ItemIDs: PList;//ItemID: string;
          ClientHandle: OPCHANDLE; DataType: TVarType;
          var ServerHandle: OPCHANDLE; var CanonicalType: TVarType): HResult;
function GroupRemoveItem(GroupIf: IOPCItemMgt; ItemIDs: PList)
          //ServerHandle: OPCHANDLE)
          : HResult;
function GroupAdviseTime(GroupIf: IUnknown; Sink: IAdviseSink;
          var AsyncConnection: Longint): HResult;
function GroupUnAdvise(GroupIf: IUnknown; AsyncConnection: Longint): HResult;
function GroupAdvise2(GroupIf: IUnknown; OPCDataCallback: IOPCDataCallback;
          var AsyncConnection: Longint): HResult;
function GroupUnadvise2(GroupIf: IUnknown;
          var AsyncConnection: Longint): HResult;
function ReadOPCGroupItemValue(GroupIf: IUnknown; ItemServerHandle: OPCHANDLE;
          var ItemValue: string; var ItemQuality: Word): HResult;
function WriteOPCGroupItemValue(GroupIf: IUnknown; ItemServerHandle: OPCHANDLE;
          ItemValue: OleVariant): HResult;
function ReadOPC(GroupIf: IUnknown; ItemIDs:PList): HResult;
procedure SetCallback;
procedure CallbackOff;
procedure ConnectionBroken;


implementation

uses MyCl, Graphics;
// utility functions wrapping OPC methods

// wrapper for IOPCServer.AddGroup
function ServerAddGroup(ServerIf: IOPCServer; Name: string; Active: BOOL;
          UpdateRate: DWORD; ClientHandle: OPCHANDLE; var GroupIf: IOPCItemMgt;
          var ServerHandle: OPCHANDLE): HResult;
var
  PercentDeadBand: Single;
  RevisedUpdateRate: DWORD;
begin
  Result := E_FAIL;
  if ServerIf <> nil then
  begin
    PercentDeadBand := 0.0;
    Result := ServerIf.AddGroup(PWideChar(WideString(Name)), Active, UpdateRate,
                            ClientHandle, nil, @PercentDeadBand, 0,
                            ServerHandle, RevisedUpdateRate, IOPCItemMgt,
                            IUnknown(GroupIf));
  end;
  if Failed(Result) then
  begin
    GroupIf := nil;
  end;
end;

// wrapper for IOPCItemMgt.AddItems (single item only)
function GroupAddItem(GroupIf: IOPCItemMgt; ItemIDs: PList;//ItemID: string;
          ClientHandle: OPCHANDLE; DataType: TVarType;
          var ServerHandle: OPCHANDLE; var CanonicalType: TVarType): HResult;
var
  it:^itemdef;
  i:DWORD;
  ItemDefs: POPCITEMDEFARRAY;
  ItemDef: OPCITEMDEF;
  Results: POPCITEMRESULTARRAY;
  Errors: PResultList;
  //str: ^string;
begin
  if GroupIf = nil then
  begin
    Result := E_FAIL;
    Exit;
  end;
  New(ItemDefs);
  //GetMem(itemDefs,Sizeof(itemDefs));
  for i:=0 to ItemIDs.Count-1 do
 begin

  with ItemDef do
  begin
    ItemDef.szAccessPath := '';
    it:=ItemIDs.Items[i];
    ItemDef.szItemID :=PWideChar(it^.ItemID);
    ItemDef.bActive := True;
    ItemDef.hClient := it.hClient ;
    ItemDef.dwBlobSize := 0;
    ItemDef.pBlob := nil;
    ItemDef.vtRequestedDataType := DataType;
  end;
  ItemDefs^[i]:=OPCITEMDEF(ItemDef);
 end;
  Result := GroupIf.AddItems(ItemIDs.Count, ItemDefs, Results, Errors);
  if Succeeded(Result) then
  begin
    //Result := Errors[0];
    try
      if Succeeded(Result) then
      for i:=0 to ItemIDs.Count-1 do
      begin
        It:=ItemsList.Items[i];
        It^.hServer:= Results^[i].hServer;
        /////
        if Errors^[i]<>0 then
              begin
              It^.Valid:=false;
              (CurrentFrame.Controls[it^.hClient] as TOPCEdit).Text:='INVALID';
              (CurrentFrame.Controls[it^.hClient] as TOPCEdit).Color:=clGray;
              end;
        //CanonicalType := Results[0].vtCanonicalDataType;
      end;
    finally
     // CoTaskMemFree(Results[0].pBlob);
      CoTaskMemFree(Results);
      CoTaskMemFree(Errors);
    end;
  end;
end;

// wrapper for IOPCItemMgt.RemoveItems (single item only)
function GroupRemoveItem(GroupIf: IOPCItemMgt; ItemIDs: PList)
        //  ServerHandle: OPCHANDLE)
        : HResult;
var
  ServerHandle:POPCHANDLEARRAY;
  it:^itemdef;
  i:DWORD;
  //ItemDefs: POPCITEMDEFARRAY;
  //ItemDef: OPCITEMDEF;
  //Results: POPCITEMRESULTARRAY;
  Errors: PResultList;
  //str: ^string;
begin
  if GroupIf = nil then
  begin
    Result := E_FAIL;
    Exit;
  end;
  New(ServerHandle);
  //GetMem(itemDefs,Sizeof(itemDefs));
  for i:=0 to ItemIDs.Count-1 do
   begin
    it:=ItemIDs.Items[i];
    ServerHandle^[i]:=OPCHANDLE(it^.hServer);
   end;
  Result := GroupIf.RemoveItems(ItemIDs.Count, ServerHandle, Errors);
  if Succeeded(Result) then
  begin
    Result := Errors[0];
    CoTaskMemFree(Errors);
  end;
end;

// wrapper for IDataObject.DAdvise on an OPC group object
function GroupAdviseTime(GroupIf: IUnknown; Sink: IAdviseSink;
          var AsyncConnection: Longint): HResult;
var
  DataIf: IDataObject;
  Fmt: TFormatEtc;
begin
  Result := E_FAIL;
  try
    DataIf := GroupIf as IDataObject;
  except
    DataIf := nil;
  end;
  if DataIf <> nil then
  begin
    with Fmt do
    begin
      cfFormat := OPCSTMFORMATDATATIME;
      dwAspect := DVASPECT_CONTENT;
      ptd := nil;
      tymed := TYMED_HGLOBAL;
      lindex := -1;
    end;
    AsyncConnection := 0;
    Result := DataIf.DAdvise(Fmt, ADVF_PRIMEFIRST, Sink, AsyncConnection);
    if Failed(Result) then
    begin
      AsyncConnection := 0;
    end;
  end;
end;

// wrapper for IDataObject.DUnadvise on an OPC group object
function GroupUnAdvise(GroupIf: IUnknown; AsyncConnection: Longint): HResult;
var
  DataIf: IDataObject;
begin
  Result := E_FAIL;
  try
    DataIf := GroupIf as IDataObject;
  except
    DataIf := nil;
  end;
  if DataIf <> nil then
  begin
    Result := DataIf.DUnadvise(AsyncConnection);
    frmOPClient.mDebug.Lines.Add('IDataObject advise callback deleted');
  end;
end;

// wrapper for setting up an IOPCDataCallback connection
function GroupAdvise2(GroupIf: IUnknown; OPCDataCallback: IOPCDataCallback;
          var AsyncConnection: Longint): HResult;
var
  ConnectionPointContainer: IConnectionPointContainer;
  ConnectionPoint: IConnectionPoint;
begin
  Result := E_FAIL;
  try
    ConnectionPointContainer := GroupIf as IConnectionPointContainer;
  except
    ConnectionPointContainer := nil;
  end;
  if ConnectionPointContainer <> nil then
  begin
    Result := ConnectionPointContainer.FindConnectionPoint(IID_IOPCDataCallback,
      ConnectionPoint);
    if Succeeded(Result) and (ConnectionPoint <> nil) then
    begin
      Result := ConnectionPoint.Advise(OPCDataCallback as IUnknown,
        AsyncConnection);
    end;
  end;
end;

// wrapper for cancelling up an IOPCDataCallback connection
function GroupUnadvise2(GroupIf: IUnknown;
          var AsyncConnection: Longint): HResult;
var
  ConnectionPointContainer: IConnectionPointContainer;
  ConnectionPoint: IConnectionPoint;
begin
  Result := E_FAIL;
  try
    ConnectionPointContainer := GroupIf as IConnectionPointContainer;
  except
    ConnectionPointContainer := nil;
  end;
  if ConnectionPointContainer <> nil then
  begin
    Result := ConnectionPointContainer.FindConnectionPoint(IID_IOPCDataCallback,
      ConnectionPoint);
    if Succeeded(Result) and (ConnectionPoint <> nil) then
    begin
      Result := ConnectionPoint.Unadvise(AsyncConnection);
    end;
  end;
end;

// wrapper for IOPCSyncIO.Read (single item only)
function ReadOPCGroupItemValue(GroupIf: IUnknown; ItemServerHandle: OPCHANDLE;
          var ItemValue: string; var ItemQuality: Word): HResult;
var
  SyncIOIf: IOPCSyncIO;
  Errors: PResultList;
  ItemValues: POPCITEMSTATEARRAY;
begin
  Result := E_FAIL;
  try
    SyncIOIf := GroupIf as IOPCSyncIO;
  except
    SyncIOIf := nil;
  end;
  if SyncIOIf <> nil then
  begin
    Result := SyncIOIf.Read(OPC_DS_CACHE, 1, @ItemServerHandle, ItemValues,
                            Errors);
    if Succeeded(Result) then
    begin
      Result := Errors[0];
      CoTaskMemFree(Errors);
      ItemValue := VarToStr(ItemValues[0].vDataValue);
      ItemQuality := ItemValues[0].wQuality;
      VariantClear(ItemValues[0].vDataValue);
      CoTaskMemFree(ItemValues);
    end;
  end;
end;

// wrapper for IOPCSyncIO.Write (single item only)
function WriteOPCGroupItemValue(GroupIf: IUnknown; ItemServerHandle: OPCHANDLE;
          ItemValue: OleVariant): HResult;
var
  SyncIOIf: IOPCSyncIO;
  Errors: PResultList;
begin
  Result := E_FAIL;
  try
    SyncIOIf := GroupIf as IOPCSyncIO;
  except
    SyncIOIf := nil;
  end;
  if SyncIOIf <> nil then
  begin
    Result := SyncIOIf.Write(1, @ItemServerHandle, @ItemValue, Errors);
    if Succeeded(Result) then
    begin
      Result := Errors[0];
      CoTaskMemFree(Errors);
    end;
  end;
end;

function ReadOPC(GroupIf: IUnknown; ItemIDs:PList): HResult;
var
  SyncIOIf: IOPCSyncIO;
  Errors: PResultList;
  ItemValues: POPCITEMSTATEARRAY;
  ItemSt: OPCITEMSTATE;
  SysTime: _SYSTEMTIME;
  ServerHandle: POPCHANDLEARRAY;
  it: ^itemdef;
  i, ItCount: DWORD;
begin
  Result := E_FAIL;
  if GroupIf = nil then
  begin
    Exit;
  end;
  ItCount:=0;
  New(ServerHandle);
  for i:=0 to ItemIDs.Count-1 do
   begin
    it:=ItemIDs.Items[i];
    if it^.Valid then
      begin
      ServerHandle^[ItCount]:=OPCHANDLE(it^.hServer);
      ItCount:=ItCount+1;
      end;
   end;
  try
    SyncIOIf := GroupIf as IOPCSyncIO;
  except
    SyncIOIf := nil;
  end;
  if SyncIOIf <> nil then
  begin
  Result := SyncIOIf.Read(OPC_DS_CACHE, ItCount, ServerHandle, ItemValues, Errors);
  if Result <> 0 then begin
    ConnectionBroken;
    Exit;
  end;

   for i:=0 to ItCount-1 do
    begin
     FileTimeToLocalFileTime(ItemValues[i].ftTimeStamp,ItemValues[i].ftTimeStamp);
     FileTimetoSystemTime(ItemValues[i].ftTimeStamp,SysTime);
     (CurrentFrame.Controls[ItemValues[i].hClient] as TOPCEdit).Text:=FloatToStrF(ItemValues[i].vDataValue, ffFixed, 9, 2);
//     Form1.ItemGrid.Cells[1,ItemValues[i].hClient+1]:=VarToStr(ItemValues[i].vDataValue);
     VariantClear(ItemValues[i].vDataValue);
     (CurrentFrame.Controls[ItemValues[i].hClient] as TOPCEdit).hint:=
      format('%d.%.2d.%d %d:%.2d:%.2d',
                  [SysTime.wDay,
                   SysTime.wMonth,
                   SysTime.wYear,
                   SysTime.wHour,
                   SysTime.wMinute,
                   SysTime.wSecond ]){+
       QualityToStr(ItemValues[i].wQuality)};
//     Form1.ItemGrid.Cells[3,ItemValues[i].hClient+1]:=QualityToStr(ItemValues[i].wQuality);//inttostr(Qualities[i]);
//     Form1.ItemGrid.Cells[2,ItemValues[i].hClient+1]:=
            format('%d.%.2d.%d %d:%.2d:%.2d',
                  [SysTime.wDay,
                   SysTime.wMonth,
                   SysTime.wYear,
                   SysTime.wHour,
                   SysTime.wMinute,
                   SysTime.wSecond ]);

     case (ItemValues[i].wQuality  and OPC_QUALITY_MASK ) of
       OPC_QUALITY_GOOD: (CurrentFrame.Controls[ItemValues[i].hClient] as TOPCEdit).Color:= clWindow;
       OPC_QUALITY_BAD: (CurrentFrame.Controls[ItemValues[i].hClient] as TOPCEdit).Color:= clGray;
       OPC_QUALITY_UNCERTAIN: (CurrentFrame.Controls[ItemValues[i].hClient] as TOPCEdit).Color:= clOPCStateUndefined;
     else
     end;
    end;

    if Succeeded(Result) then
    begin
      Result := Errors[0];
      CoTaskMemFree(Errors);
      //VariantClear(ItemValues[0].vDataValue);
      CoTaskMemFree(ItemValues);
    end;
  end;
end;

procedure SetCallback;
begin
  {
  OPCDataCallback := TOPCDataCallback.Create;
  HR := GroupAdvise2(GroupIf, OPCDataCallback, AsyncConnection);
  if Failed(HR) then
  begin
    Form1.mDebug.Lines.Add('Failed to set up IConnectionPointContainer advise callback');
  end
  else begin
    Form1.mDebug.Lines.Add('IConnectionPointContainer data callback established');
    CallBacked:=true;
    end;
   }
  // set up an IDataObject advise callback for the group
  if not connected then exit;
  AdviseSink := TOPCAdviseSink.Create;
  HR := GroupAdviseTime(GroupIf, AdviseSink, AsyncConnection);
  if Failed(HR) then
  begin
    frmOPClient.mDebug.Lines.Add('Failed to set up IDataObject advise callback');
    frmOPClient.CheckBox1.Checked:=false;
  end
  else begin
    frmOPClient.mDebug.Lines.Add('IDataObject advise callback established');
    CallBacked:=true;
  end;

end;

procedure CallbackOff;
begin
if CallBacked then
begin
//GroupUnadvise2(GroupIf, AsyncConnection);
// *******end the IDataObject advise callback
GroupUnadvise(GroupIf, AsyncConnection);
CallBacked:=false;
end;
end;

procedure ConnectionBroken;
var
 i: Integer;
begin
  for i:=0 to CurrentFrame.ControlCount-1 do
    if CurrentFrame.Controls[i].ClassNameIs('TOPCEdit') then
      (CurrentFrame.Controls[i] as TOPCEdit).Color := clGray;
end;

end.
