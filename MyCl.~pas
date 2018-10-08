unit MyCl;

interface

uses
  Windows, Forms, ComObj, ActiveX, SysUtils, OPCtypes, OPCDA, //OPCutils,
  {prOpcUtils,} StdCtrls, Controls, Classes, Dialogs, OPCutils, Grids,
  ExtCtrls, ComCtrls, OPCEdit, Variants, Spin, FrameSummary,
  FrameCollectSPT, FrameChemist, FrameChemist2, FrameTurb_Ochered4,
  FrameTurb, FrameTurb_Ochered5, FrameCollectSHA711, FrameTeplosetBalans,
  FrameBereg, FrameTeploset, Buttons, FrameAskue, FrameUPS, FrameTurb_KA;

type
  TfrmOPClient = class(TForm)
    mDebug: TMemo;
    PageControl: TPageControl;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Check1: TCheckBox;
    seTimer: TSpinEdit;
    Timer1: TTimer;
    tsSummary: TTabSheet;
    fraSummary1: TfraSummary;
    tsChemist1: TTabSheet;
    fraChemist1: TfraChemist1;
    tsCurilenko: TTabSheet;
    fraTurb1: TfraTurb;
    tsTeplosetBalans: TTabSheet;
    TabSheet1: TTabSheet;
    fraBereg1: TfraBereg;
    fraBalans1: TfraBalans;
    bbAbout: TBitBtn;
    tsAskue: TTabSheet;
    fraAskue1: TfraAskue;
    tsUPS: TTabSheet;
    fraUPS1: TfraUPS;
    procedure Time(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Disconnect();
    procedure Connect();
    procedure Check1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure seTimerChange(Sender: TObject);
    procedure fraTurb1pcTurbChange(Sender: TObject);
    procedure fraBalans1pcTeploChange(Sender: TObject);
    procedure TimerBalansTimer(Sender: TObject);
    procedure bbAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  itemdef = record
    ItemID:WideString;
    hClient,hServer:OPCHANDLE;
    Valid:boolean;
  end;

var
  frmOPClient: TfrmOPClient;
  connected: Boolean = False;
  Callbacked: Boolean = False;
  ItemsAdded: Boolean = False;
  CurrentFrame: TFrame;
//  clOPCStateUndefined: TColor = RGB(120, 100, 100);

const
  OneSecond = 1 / (24 * 60 * 60);
  // these are for use with the Matrikon sample server
  ServerProgID = 'Matrikon.OPC.Simulation';
//  RPC_C_AUTHN_LEVEL_NONE = 1;
  RPC_C_AUTHN_LEVEL_NONE = 1;
//  RPC_C_IMP_LEVEL_IMPERSONATE = 3;
  RPC_C_IMP_LEVEL_IMPERSONATE = 3;
  EOAC_NONE = 0;
  CLSID_OPCServer_WinCC: TGUID = '{75d00bbb-dda5-11d1-b944-9e614d000000}';
  clOPCStateUndefined = 6579320;

type
  // class to receive IDataObject data change advises
  TOPCAdviseSink = class(TInterfacedObject, IAdviseSink)
  public
    procedure OnDataChange(const formatetc: TFormatEtc;
                          const stgmed: TStgMedium); stdcall;
    procedure OnViewChange(dwAspect: Longint; lindex: Longint); stdcall;
    procedure OnRename(const mk: IMoniker); stdcall;
    procedure OnSave; stdcall;
    procedure OnClose; stdcall;
  end;
  // class to receive IConnectionPointContainer data change callbacks
  TOPCDataCallback = class(TInterfacedObject, IOPCDataCallback)
  public
    function OnDataChange(dwTransid: DWORD; hGroup: OPCHANDLE;
      hrMasterquality: HResult; hrMastererror: HResult; dwCount: DWORD;
      phClientItems: POPCHANDLEARRAY; pvValues: POleVariantArray;
      pwQualities: PWordArray; pftTimeStamps: PFileTimeArray;
      pErrors: PResultList): HResult; stdcall;
    function OnReadComplete(dwTransid: DWORD; hGroup: OPCHANDLE;
      hrMasterquality: HResult; hrMastererror: HResult; dwCount: DWORD;
      phClientItems: POPCHANDLEARRAY; pvValues: POleVariantArray;
      pwQualities: PWordArray; pftTimeStamps: PFileTimeArray;
      pErrors: PResultList): HResult; stdcall;
    function OnWriteComplete(dwTransid: DWORD; hGroup: OPCHANDLE;
      hrMastererr: HResult; dwCount: DWORD; pClienthandles: POPCHANDLEARRAY;
      pErrors: PResultList): HResult; stdcall;
    function OnCancelComplete(dwTransid: DWORD; hGroup: OPCHANDLE):
      HResult; stdcall;
  end;

var
  ServerIf: IOPCServer;
  GroupIf: IOPCItemMgt;
  GroupHandle: OPCHANDLE;
  Item0Name: string;
  Item0Handle: OPCHANDLE;
  Item1Handle: OPCHANDLE;
  ItemType: TVarType;
  ItemValue: string;
  ItemQuality: Word;
  HR: HResult;
  AdviseSink: IAdviseSink;
  AsyncConnection: Longint;
  OPCDataCallback: IOPCDataCallback;
  StartTime: TDateTime;
  ItemsList:TList;
  ItemsFile:TextFile;
  ComboBoxCurItem:integer;

implementation

{$R *.DFM}

uses  FormAbout, FrameGASMET;

procedure TfrmOPClient.Connect;
begin
if not connected then Exit;
//connected:=true;
mDebug.Clear;
  HR := GroupAddItem(GroupIf, @ItemsList, 0, VT_EMPTY, Item0Handle,
     ItemType);
  if Succeeded(HR) then
  begin
    mDebug.Lines.Add('Added items to group');
    ItemsAdded:=true;
  end
  else begin
    mDebug.Lines.Add('Unable to add items to group');
    //ServerIf.RemoveGroup(GroupHandle, False);
    Exit;
  end;
end;

procedure TfrmOPClient.Disconnect;
begin
if not connected then Exit;
if not ItemsAdded then Exit;
HR:=GroupRemoveItem(GroupIf, @ItemsList);
  if Succeeded(HR) then
  begin
    mDebug.Lines.Add('Removed items from group');
    ItemsAdded:=False;
  end
  else begin
    mDebug.Lines.Add('Unable to remove items from group');
    //ServerIf.RemoveGroup(GroupHandle, False);
    Exit;
  end;
{
GroupUnadvise2(GroupIf, AsyncConnection);
HR := ServerIf.RemoveGroup(GroupHandle, False);
  if Succeeded(HR) then
  begin
    mDebug.Lines.Add('Removed group');
  end
  else begin
    mDebug.Lines.Add('Unable to remove group');
  end;
ServerIf:=nil;
//Button1.Enabled:=true;
//Edit1.Enabled:=true;
//Button2.Enabled:=False;
connected:=False;
}
end;

// TOPCAdviseSink methods
// OPC standard says this is the only method we need to fill in

procedure TOPCAdviseSink.OnDataChange(const formatetc: TFormatEtc;
                                      const stgmed: TStgMedium);
var
  PG: POPCGROUPHEADER;
  PI1: POPCITEMHEADER1ARRAY;
  PI2: POPCITEMHEADER2ARRAY;
  PV: POleVariant;
  I: Integer;
  PStr: PWideChar;
  NewValue: string;
  WithTime: Boolean;
  ClientHandle: OPCHANDLE;
  Quality: Word;
  SysTime:_SYSTEMTIME;
begin
  // the rest of this method assumes that the item header array uses
  // OPCITEMHEADER1 or OPCITEMHEADER2 records,
  // so check this first to be defensive
  if (formatetc.cfFormat <> OPCSTMFORMATDATA) and
      (formatetc.cfFormat <> OPCSTMFORMATDATATIME) then Exit;
  // does the data stream provide timestamps with each value?
  WithTime := formatetc.cfFormat = OPCSTMFORMATDATATIME;

  PG := GlobalLock(stgmed.hGlobal);
  if PG <> nil then
  begin
    // we will only use one of these two values, according to whether
    // WithTime is set:
    PI1 := Pointer(PChar(PG) + SizeOf(OPCGROUPHEADER));
    PI2 := Pointer(PI1);
    if Succeeded(PG.hrStatus) then
    begin
      for I := 0 to PG.dwItemCount - 1 do
      begin
        if WithTime then
        begin
          PV := POleVariant(PChar(PG) + PI1[I].dwValueOffset);
          ClientHandle := PI1[I].hClient;
          Quality := (PI1[I].wQuality and OPC_QUALITY_MASK);
          FileTimeToLocalFileTime(PI1[i].ftTimeStampItem,PI1[i].ftTimeStampItem);
          FileTimeToSystemTime(PI1[i].ftTimeStampItem,SysTime);
        end
        else begin
          PV := POleVariant(PChar(PG) + PI2[I].dwValueOffset);
          ClientHandle := PI2[I].hClient;
          Quality := (PI2[I].wQuality and OPC_QUALITY_MASK);
        end;
        if Quality = OPC_QUALITY_GOOD then
        begin
          // this test assumes we're not dealing with array data
          if TVarData(PV^).VType <> VT_BSTR then
          begin
            NewValue := VarToStr(PV^);
          end
          else begin
            // for BSTR data, the BSTR image follows immediately in the data
            // stream after the variant union;  the BSTR begins with a DWORD
            // character count, which we skip over as the BSTR is also
            // NULL-terminated
            PStr := PWideChar(PChar(PV) + SizeOf(OleVariant) + 4);
            NewValue := WideString(PStr);
          end;
          if WithTime then
          begin
            format('%d.%.2d.%d %d:%.2d:%.2d',
                  [SysTime.wDay,
                   SysTime.wMonth,
                   SysTime.wYear,
                   SysTime.wHour,
                   SysTime.wMinute,
                   SysTime.wSecond ]);
          end
          else begin
          end;
        end
        else begin
          frmOPClient.mDebug.Lines.Add('Advise received for item '+IntToStr(ClientHandle)+' , but quality not good');
        end;
      end;
    end;
    GlobalUnlock(stgmed.hGlobal);
  end;
end;

procedure TOPCAdviseSink.OnViewChange(dwAspect: Longint; lindex: Longint);
begin
end;

procedure TOPCAdviseSink.OnRename(const mk: IMoniker);
begin
end;

procedure TOPCAdviseSink.OnSave;
begin
end;

procedure TOPCAdviseSink.OnClose;
begin
end;

// TOPCDataCallback methods
function TOPCDataCallback.OnDataChange(dwTransid: DWORD; hGroup: OPCHANDLE;
  hrMasterquality: HResult; hrMastererror: HResult; dwCount: DWORD;
  phClientItems: POPCHANDLEARRAY; pvValues: POleVariantArray;
  pwQualities: PWordArray; pftTimeStamps: PFileTimeArray;
  pErrors: PResultList): HResult;
var
  ClientItems: POPCHANDLEARRAY;
  Values: POleVariantArray;
  Qualities: PWORDARRAY;
  I: Integer;
  SysTime:_SYSTEMTIME;
  it: ^itemdef;
begin
  Result := S_OK;
  ClientItems := POPCHANDLEARRAY(phClientItems);
  Values := POleVariantArray(pvValues);
  Qualities := PWORDARRAY(pwQualities);
  for I := 0 to dwCount-1 do
  begin
    it:=ItemsList.Items[ClientItems^[i]];
    if not it^.Valid then
        begin
        Continue;
        end;
    FileTimeToLocalFileTime(pftTimeStamps^[i],pftTimeStamps^[i]);
    FileTimetoSystemTime(pftTimeStamps^[i],SysTime);
            format('%d.%.2d.%d %d:%.2d:%.2d',
                  [SysTime.wDay,
                   SysTime.wMonth,
                   SysTime.wYear,
                   SysTime.wHour,
                   SysTime.wMinute,
                   SysTime.wSecond ]);
    if Qualities[I] = OPC_QUALITY_GOOD then
    begin
    end
    else begin
      frmOPClient.mDebug.Lines.Add('Callback received for item '+inttostr(ClientItems^[I])+
              ' , but quality not good');
    end;
  end;
end;

function TOPCDataCallback.OnReadComplete(dwTransid: DWORD; hGroup: OPCHANDLE;
  hrMasterquality: HResult; hrMastererror: HResult; dwCount: DWORD;
  phClientItems: POPCHANDLEARRAY; pvValues: POleVariantArray;
  pwQualities: PWordArray; pftTimeStamps: PFileTimeArray;
  pErrors: PResultList): HResult;
begin
  Result := OnDataChange(dwTransid, hGroup, hrMasterquality, hrMastererror,
    dwCount, phClientItems, pvValues, pwQualities, pftTimeStamps, pErrors);
end;

function TOPCDataCallback.OnWriteComplete(dwTransid: DWORD; hGroup: OPCHANDLE;
  hrMastererr: HResult; dwCount: DWORD; pClienthandles: POPCHANDLEARRAY;
  pErrors: PResultList): HResult;
begin
  // we don't use this facility
  Result := S_OK;
end;

function TOPCDataCallback.OnCancelComplete(dwTransid: DWORD;
  hGroup: OPCHANDLE): HResult;
begin
  // we don't use this facility
  Result := S_OK;
end;

procedure TfrmOPClient.FormDestroy(Sender: TObject);
begin
//if connected then Disconnect;
if not connected then Exit;
if callbacked then CallbackOff;//GroupUnadvise2(GroupIf, AsyncConnection);
HR := ServerIf.RemoveGroup(GroupHandle, False);
  if Succeeded(HR) then
  begin
    mDebug.Lines.Add('Removed group');
  end
  else begin
    mDebug.Lines.Add('Unable to remove group');
  end;
ServerIf:=nil;
connected:=False;
end;

procedure TfrmOPClient.FormCreate(Sender: TObject);
//var ItemID:string;
//    PItemID:^WideString;
//    i:integer;
{
var  BrowseIf:IOPCBrowseServerAddressSpace;
     nst:TOleEnum;
     EnStr:IEnumString;
     WSAr:Array [0..100] of WideString;
     cnt:Longint;
     }
begin
ItemsList:=TList.Create;

{CoSetProxyBlanket(QueryInterface,
    RPC_C_AUTHN_NONE,
    RPC_C_AUTHZ_NONE,
    NULL,
    RPC_C_AUTHN_LEVEL_NONE,
    RPC_C_IMP_LEVEL_IDENTIFY,
    NULL,
    EOAC_NONE);
        }

HR := CoInitializeSecurity(
    nil,                    // points to security descriptor
    -1,                     // count of entries in asAuthSvc
    nil,                    // array of names to register
    nil,                    // reserved for future use
    RPC_C_AUTHN_LEVEL_NONE, // the default authentication level for proxies
    RPC_C_IMP_LEVEL_IMPERSONATE,// the default impersonation level for proxies
    nil,                    // used only on Windows 2000
    EOAC_NONE,              // additional client or server-side capabilities
    nil                     // reserved for future use
    );
  if Failed(HR) then
  begin
    ShowMessage('Failed to initialize DCOM security');
  end;

if connected then Exit;
mDebug.Clear;
  try
    // we will use the custom OPC interfaces, and OPCProxy.dll will handle
    // marshaling for us automatically (if registered)
//    ServerIf := CreateRemoteComObject('uktbase',CLSID_OPCServer_WinCC) as IOPCServer;
    ServerIf := CreateRemoteComObject('10.250.176.183',CLSID_OPCServer_WinCC) as IOPCServer;
  except
    ServerIf := nil;
  end;
  if ServerIf <> nil then
  begin
    mDebug.Lines.Add('Connected to OPC server');

   {
    BrowseIf:=ServerIf as IOPCBrowseServerAddressSpace;
    HR:=BrowseIf.QueryOrganization(nst);
    HR:=BrowseIf.BrowseOPCItemIDs(OPC_FLAT,#0,VT_EMPTY,1,EnStr);
    //HR:=EnStr.Reset;

    HR:=EnStr.Next(100,WSAr,@cnt);
    Exit;
    }
  end
  else begin
    mDebug.Lines.Add('Unable to connect to OPC server');
    Exit;
  end;

  // now add a group
  HR := ServerAddGroup(ServerIf, 'MyGroup', True, 1000, 0, GroupIf, GroupHandle);
  if Succeeded(HR) then
  begin
    mDebug.Lines.Add('Added group to server');
    connected:=true;
  end
  else begin
    mDebug.Lines.Add('Unable to add group to server');
    Exit;
  end;
  //OPCDataCallback := TOPCDataCallback.Create;
  //HR := GroupAdvise2(GroupIf, OPCDataCallback, AsyncConnection);
  //if Failed(HR) then
  //begin
  //  mDebug.Lines.Add('Failed to set up IConnectionPointContainer advise callback');
  //end
  //else begin
  //  mDebug.Lines.Add('IConnectionPointContainer data callback established');
  //  end;
  PageControlChange(self);

end;

procedure TfrmOPClient.Time(Sender: TObject);
var HR:HResult;
begin
  if ItemsAdded then
  HR:=OPCUtils.ReadOPC(GroupIf,@ItemsList);
end;

procedure TfrmOPClient.Check1Click(Sender: TObject);
begin
  Timer1.Enabled := Check1.Checked
end;

procedure TfrmOPClient.Timer1Timer(Sender: TObject);
begin
   OPCUtils.ReadOPC(GroupIf,@ItemsList)
end;

procedure TfrmOPClient.CheckBox1Click(Sender: TObject);
begin
  if (connected and CheckBox1.Checked)
    then SetCallback
    else CallBackOff;
end;

procedure TfrmOPClient.PageControlChange(Sender: TObject);
var
  tt,ItemID:string;
  Item:^itemdef;
  i:integer;
  TimerBalans:TTimer;
begin
  CurrentFrame := frmOPClient.PageControl.ActivePage.Controls[0] as TFrame;
  if CurrentFrame.Name='fraTurb1' then CurrentFrame := fraTurb1.pcTurb.ActivePage.Controls[0] as TFrame;
  if CurrentFrame.Name='fraBalans1' then CurrentFrame := fraBalans1.pcTeplo.ActivePage.Controls[0] as TFrame;

  mDebug.Lines.Add('Trying to connect to server ...');
  if not connected then Exit;
  if ItemsAdded then Disconnect;
  ItemsList.Clear;
  if CurrentFrame.Name='fraTeplosetBalans1' then begin
    TimerBalansTimer(Self);
//    TimerBalans:=CurrentFrame.FindComponent('Timer1') as TTimer;
//    TimerBalans.Enabled:=False;
//    TimerBalans.Interval:=seTimer.Value*1000;
//    TimerBalans.Enabled:=True;
  end;
  if CurrentFrame.Name='fraUPS1' then fraUPS1.tmrSetColorUPSTimer(Self);

  for i:=0 to CurrentFrame.ControlCount-1 do
    with CurrentFrame.Controls[i] do
      if ClassNameIs('TOPCEdit') then begin
        tt:=(CurrentFrame.Controls[i] as TOPCEdit).OPCTag;
        New(Item);
        Item^.ItemID:=WideString(tt);
        Item^.hClient:=i;
        Item^.hServer:=0;
        Item^.Valid:=true;
        ItemsList.Add(Item);
      end;

  Connect;
  if ItemsAdded then Time(self);
  if CurrentFrame.Name='fraTurb_KA1' then fraTurb1.fraTurb_KA1.tmrKA.Enabled:=True else fraTurb1.fraTurb_KA1.tmrKA.Enabled:=False;
end;

procedure TfrmOPClient.seTimerChange(Sender: TObject);
begin
  Timer1.Interval := seTimer.Value*1000;
end;

procedure TfrmOPClient.fraTurb1pcTurbChange(Sender: TObject);
var
  tt,ItemID:string;
  Item:^itemdef;
  i:integer;
begin
  CurrentFrame := frmOPClient.PageControl.ActivePage.Controls[0] as TFrame;
  if CurrentFrame.Name='fraTurb1' then CurrentFrame := fraTurb1.pcTurb.ActivePage.Controls[0] as TFrame;
  if CurrentFrame.Name='fraTurb_KA1' then fraTurb1.fraTurb_KA1.tmrKA.Enabled:=True else fraTurb1.fraTurb_KA1.tmrKA.Enabled:=False;

  mDebug.Lines.Add('Trying to connect to server ...');
  if not connected then Exit;
  if ItemsAdded then Disconnect;
  ItemsList.Clear;

  for i:=0 to CurrentFrame.ControlCount-1 do
    with CurrentFrame.Controls[i] do
      if ClassNameIs('TOPCEdit') then begin
        tt:=(CurrentFrame.Controls[i] as TOPCEdit).OPCTag;
        New(Item);
        Item^.ItemID:=WideString(tt);
        Item^.hClient:=i;
        Item^.hServer:=0;
        Item^.Valid:=true;
        ItemsList.Add(Item);
      end;

  Connect;
  if ItemsAdded then Time(self);
end;

procedure TfrmOPClient.fraBalans1pcTeploChange(Sender: TObject);
var
  tt,ItemID:string;
  Item:^itemdef;
  i:integer;
begin
  CurrentFrame := frmOPClient.PageControl.ActivePage.Controls[0] as TFrame;
  if CurrentFrame.Name='fraBalans1' then CurrentFrame := fraBalans1.pcTeplo.ActivePage.Controls[0] as TFrame;

  mDebug.Lines.Add('Trying to connect to server ...');
  if not connected then Exit;
  if ItemsAdded then Disconnect;
  ItemsList.Clear;

  if CurrentFrame.Name='fraTeplosetBalans1' then begin
//    TimerBalans:=CurrentFrame.FindComponent('TimerBalans') as TTimer;
//    TimerBalans.Enabled:=False;
//    TimerBalans.Interval:=seTimer.Value*1000;
//    TimerBalans.Enabled:=True;
  end;

  for i:=0 to CurrentFrame.ControlCount-1 do
    with CurrentFrame.Controls[i] do
      if ClassNameIs('TOPCEdit') then begin
        tt:=(CurrentFrame.Controls[i] as TOPCEdit).OPCTag;
        New(Item);
        Item^.ItemID:=WideString(tt);
        Item^.hClient:=i;
        Item^.hServer:=0;
        Item^.Valid:=true;
        ItemsList.Add(Item);
      end;

  Connect;
  if ItemsAdded then Time(self);
end;

procedure TfrmOPClient.TimerBalansTimer(Sender: TObject);
begin
//  StaticText16.Caption:=FormatFloat('0.00',StrToFloat(OPCEdit1.Text)+StrToFloat(OPCEdit8.Text)+StrToFloat(OPCEdit14.Text)+
//  StrToFloat(OPCEdit20.Text)+StrToFloat(OPCEdit26.Text)+StrToFloat(OPCEdit38.Text)+StrToFloat(OPCEdit44.Text)-
//  StrToFloat(OPCEdit3.Text)-StrToFloat(OPCEdit11.Text)-StrToFloat(OPCEdit17.Text)-StrToFloat(OPCEdit23.Text)-
//  StrToFloat(OPCEdit29.Text)-StrToFloat(OPCEdit41.Text)-StrToFloat(OPCEdit47.Text)-StrToFloat(OPCEdit7.Text)+
//  StrToFloat(OPCEdit110.Text)+StrToFloat(OPCEdit111.Text)+StrToFloat(OPCEdit112.Text));

//  StaticText17.Caption:=FormatFloat('0.00',StrToFloat(OPCEdit92.Text)+StrToFloat(OPCEdit95.Text)-StrToFloat(OPCEdit101.Text)-
//  StrToFloat(OPCEdit104.Text)-StrToFloat(OPCEdit98.Text)-StrToFloat(OPCEdit107.Text));

//  StaticText18.Caption:=FormatFloat('0.00',StrToFloat(OPCEdit115.Text)+StrToFloat(OPCEdit116.Text)-StrToFloat(OPCEdit113.Text)-
//  StrToFloat(OPCEdit114.Text)-StrToFloat(OPCEdit119.Text));
end;

procedure TfrmOPClient.bbAboutClick(Sender: TObject);
begin
  FormAbout1.ShowModal;
end;

end.
