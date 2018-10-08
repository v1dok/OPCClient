unit FrameGASMET;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, OPCEdit, StdCtrls, ExtCtrls;

type
  TfraGASMET = class(TFrame)
    Edit2: TEdit;
    Edit43: TEdit;
    OPCEdit44: TOPCEdit;
    OPCEdit1: TOPCEdit;
    Edit1: TEdit;
    OPCEdit2: TOPCEdit;
    Edit3: TEdit;
    OPCEdit3: TOPCEdit;
    Edit4: TEdit;
    OPCEdit4: TOPCEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    OPCEdit5: TOPCEdit;
    OPCEdit6: TOPCEdit;
    OPCEdit7: TOPCEdit;
    OPCEdit8: TOPCEdit;
    OPCEdit9: TOPCEdit;
    Edit7: TEdit;
    OPCEdit10: TOPCEdit;
    OPCEdit11: TOPCEdit;
    OPCEdit12: TOPCEdit;
    OPCEdit13: TOPCEdit;
    OPCEdit14: TOPCEdit;
    Edit8: TEdit;
    OPCEdit15: TOPCEdit;
    OPCEdit16: TOPCEdit;
    OPCEdit17: TOPCEdit;
    OPCEdit18: TOPCEdit;
    OPCEdit19: TOPCEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    OPCEdit20: TOPCEdit;
    OPCEdit21: TOPCEdit;
    Edit11: TEdit;
    OPCEdit22: TOPCEdit;
    Edit12: TEdit;
    OPCEdit23: TOPCEdit;
    Edit13: TEdit;
    OPCEdit24: TOPCEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    OPCEdit25: TOPCEdit;
    OPCEdit26: TOPCEdit;
    OPCEdit27: TOPCEdit;
    OPCEdit28: TOPCEdit;
    OPCEdit29: TOPCEdit;
    Edit16: TEdit;
    OPCEdit30: TOPCEdit;
    OPCEdit31: TOPCEdit;
    OPCEdit32: TOPCEdit;
    OPCEdit33: TOPCEdit;
    OPCEdit34: TOPCEdit;
    Edit17: TEdit;
    OPCEdit35: TOPCEdit;
    OPCEdit36: TOPCEdit;
    OPCEdit37: TOPCEdit;
    OPCEdit38: TOPCEdit;
    OPCEdit39: TOPCEdit;
    OPCEdit40: TOPCEdit;
    Edit18: TEdit;
    OPCEdit41: TOPCEdit;
    OPCEdit42: TOPCEdit;
    OPCEdit43: TOPCEdit;
    OPCEdit45: TOPCEdit;
    Edit19: TEdit;
    OPCEdit46: TOPCEdit;
    OPCEdit47: TOPCEdit;
    OPCEdit48: TOPCEdit;
    OPCEdit49: TOPCEdit;
    Edit20: TEdit;
    OPCEdit50: TOPCEdit;
    OPCEdit51: TOPCEdit;
    OPCEdit52: TOPCEdit;
    OPCEdit53: TOPCEdit;
    Edit21: TEdit;
    OPCEdit54: TOPCEdit;
    OPCEdit55: TOPCEdit;
    OPCEdit56: TOPCEdit;
    OPCEdit57: TOPCEdit;
    Edit22: TEdit;
    OPCEdit58: TOPCEdit;
    OPCEdit59: TOPCEdit;
    OPCEdit60: TOPCEdit;
    OPCEdit61: TOPCEdit;
    Edit23: TEdit;
    OPCEdit62: TOPCEdit;
    OPCEdit63: TOPCEdit;
    OPCEdit64: TOPCEdit;
    OPCEdit65: TOPCEdit;
    Edit24: TEdit;
    OPCEdit66: TOPCEdit;
    OPCEdit67: TOPCEdit;
    OPCEdit68: TOPCEdit;
    OPCEdit69: TOPCEdit;
    Edit25: TEdit;
    OPCEdit70: TOPCEdit;
    OPCEdit71: TOPCEdit;
    OPCEdit72: TOPCEdit;
    OPCEdit73: TOPCEdit;
    Edit26: TEdit;
    OPCEdit74: TOPCEdit;
    OPCEdit75: TOPCEdit;
    OPCEdit76: TOPCEdit;
    OPCEdit77: TOPCEdit;
    Edit27: TEdit;
    OPCEdit78: TOPCEdit;
    OPCEdit79: TOPCEdit;
    OPCEdit80: TOPCEdit;
    Edit28: TEdit;
    ed_CO_11A_Norm: TEdit;
    ed_NO2_11A_Norm: TEdit;
    ed_NO_11A_Norm: TEdit;
    ed_NOx_11A_Norm: TEdit;
    ed_SO2_11A_Norm: TEdit;
    ed_DE_11A_Norm: TEdit;
    Edit29: TEdit;
    ed_CO_13A_Norm: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    ed_NOx_13A_Norm: TEdit;
    ed_SO2_13A_Norm: TEdit;
    ed_DE_13A_Norm: TEdit;
    Edit36: TEdit;
    ed_CO_11B_Norm: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    ed_NOx_11B_Norm: TEdit;
    ed_SO2_11B_Norm: TEdit;
    ed_DE_11B_Norm: TEdit;
    Edit44: TEdit;
    ed_CO_13B_Norm: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    ed_NOx_13B_Norm: TEdit;
    ed_SO2_13B_Norm: TEdit;
    ed_DE_13B_Norm: TEdit;
    Edit51: TEdit;
    ed_CO_12A_Norm: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    ed_NOx_12A_Norm: TEdit;
    ed_SO2_12A_Norm: TEdit;
    ed_DE_12A_Norm: TEdit;
    Edit58: TEdit;
    ed_CO_14_Norm: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    ed_NOx_14_Norm: TEdit;
    ed_SO2_14_Norm: TEdit;
    ed_DE_14_Norm: TEdit;
    Edit65: TEdit;
    ed_CO_12B_Norm: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    ed_NOx_12B_Norm: TEdit;
    ed_SO2_12B_Norm: TEdit;
    ed_DE_12B_Norm: TEdit;
    Edit72: TEdit;
    ed_CO_15_Norm: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    ed_NOx_15_Norm: TEdit;
    ed_SO2_15_Norm: TEdit;
    ed_DE_15_Norm: TEdit;
    Edit30: TEdit;
    Edit37: TEdit;
    Edit45: TEdit;
    Edit52: TEdit;
    Edit59: TEdit;
    Edit66: TEdit;
    Edit73: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    Edit95: TEdit;
    Edit96: TEdit;
    Edit97: TEdit;
    Edit98: TEdit;
    Edit99: TEdit;
    Edit100: TEdit;
    Edit101: TEdit;
    Edit102: TEdit;
    Edit103: TEdit;
    tmrSetColorASPK: TTimer;
    Edit33: TEdit;
    OPCEdit81: TOPCEdit;
    Edit34: TEdit;
    OPCEdit82: TOPCEdit;
    procedure tmrSetColorASPKTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfraGASMET.tmrSetColorASPKTimer(Sender: TObject);
begin
  try
    // KA-11 A
    if StrToFloat(OPCEdit44.Text)<StrToFloat(ed_CO_11A_Norm.Text) then ed_CO_11A_Norm.Color:=clLime else ed_CO_11A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit3.Text)<StrToFloat(ed_NOx_11A_Norm.Text) then ed_NOx_11A_Norm.Color:=clLime else ed_NOx_11A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit4.Text)<StrToFloat(ed_SO2_11A_Norm.Text) then ed_SO2_11A_Norm.Color:=clLime else ed_SO2_11A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit40.Text)<StrToFloat(ed_DE_11A_Norm.Text) then ed_DE_11A_Norm.Color:=clLime else ed_DE_11A_Norm.Color:=clRed;
    // KA-11 B
    if StrToFloat(OPCEdit5.Text)<StrToFloat(ed_CO_11B_Norm.Text) then ed_CO_11B_Norm.Color:=clLime else ed_CO_11B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit8.Text)<StrToFloat(ed_NOx_11B_Norm.Text) then ed_NOx_11B_Norm.Color:=clLime else ed_NOx_11B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit9.Text)<StrToFloat(ed_SO2_11B_Norm.Text) then ed_SO2_11B_Norm.Color:=clLime else ed_SO2_11B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit41.Text)<StrToFloat(ed_DE_11B_Norm.Text) then ed_DE_11B_Norm.Color:=clLime else ed_DE_11B_Norm.Color:=clRed;
    // KA-12 A
    if StrToFloat(OPCEdit10.Text)<StrToFloat(ed_CO_12A_Norm.Text) then ed_CO_12A_Norm.Color:=clLime else ed_CO_12A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit13.Text)<StrToFloat(ed_NOx_12A_Norm.Text) then ed_NOx_12A_Norm.Color:=clLime else ed_NOx_12A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit14.Text)<StrToFloat(ed_SO2_12A_Norm.Text) then ed_SO2_12A_Norm.Color:=clLime else ed_SO2_12A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit42.Text)<StrToFloat(ed_DE_12A_Norm.Text) then ed_DE_12A_Norm.Color:=clLime else ed_DE_12A_Norm.Color:=clRed;
    // KA-12 B
    if StrToFloat(OPCEdit15.Text)<StrToFloat(ed_CO_12B_Norm.Text) then ed_CO_12B_Norm.Color:=clLime else ed_CO_12B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit18.Text)<StrToFloat(ed_NOx_12B_Norm.Text) then ed_NOx_12B_Norm.Color:=clLime else ed_NOx_12B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit19.Text)<StrToFloat(ed_SO2_12B_Norm.Text) then ed_SO2_12B_Norm.Color:=clLime else ed_SO2_12B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit43.Text)<StrToFloat(ed_DE_12B_Norm.Text) then ed_DE_12B_Norm.Color:=clLime else ed_DE_12B_Norm.Color:=clRed;
    // KA-13 A
    if StrToFloat(OPCEdit20.Text)<StrToFloat(ed_CO_13A_Norm.Text) then ed_CO_13A_Norm.Color:=clLime else ed_CO_13A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit23.Text)<StrToFloat(ed_NOx_13A_Norm.Text) then ed_NOx_13A_Norm.Color:=clLime else ed_NOx_13A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit24.Text)<StrToFloat(ed_SO2_13A_Norm.Text) then ed_SO2_13A_Norm.Color:=clLime else ed_SO2_13A_Norm.Color:=clRed;
    if StrToFloat(OPCEdit57.Text)<StrToFloat(ed_DE_13A_Norm.Text) then ed_DE_13A_Norm.Color:=clLime else ed_DE_13A_Norm.Color:=clRed;
    // KA-13 B
    if StrToFloat(OPCEdit25.Text)<StrToFloat(ed_CO_13B_Norm.Text) then ed_CO_13B_Norm.Color:=clLime else ed_CO_13B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit28.Text)<StrToFloat(ed_NOx_13B_Norm.Text) then ed_NOx_13B_Norm.Color:=clLime else ed_NOx_13B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit29.Text)<StrToFloat(ed_SO2_13B_Norm.Text) then ed_SO2_13B_Norm.Color:=clLime else ed_SO2_13B_Norm.Color:=clRed;
    if StrToFloat(OPCEdit58.Text)<StrToFloat(ed_DE_13B_Norm.Text) then ed_DE_13B_Norm.Color:=clLime else ed_DE_13B_Norm.Color:=clRed;
    // KA-14
    if StrToFloat(OPCEdit30.Text)<StrToFloat(ed_CO_14_Norm.Text) then ed_CO_14_Norm.Color:=clLime else ed_CO_14_Norm.Color:=clRed;
    if StrToFloat(OPCEdit33.Text)<StrToFloat(ed_NOx_14_Norm.Text) then ed_NOx_14_Norm.Color:=clLime else ed_NOx_14_Norm.Color:=clRed;
    if StrToFloat(OPCEdit34.Text)<StrToFloat(ed_SO2_14_Norm.Text) then ed_SO2_14_Norm.Color:=clLime else ed_SO2_14_Norm.Color:=clRed;
    if StrToFloat(OPCEdit59.Text)<StrToFloat(ed_DE_14_Norm.Text) then ed_DE_14_Norm.Color:=clLime else ed_DE_14_Norm.Color:=clRed;
    // KA-15
    if StrToFloat(OPCEdit35.Text)<StrToFloat(ed_CO_15_Norm.Text) then ed_CO_15_Norm.Color:=clLime else ed_CO_15_Norm.Color:=clRed;
    if StrToFloat(OPCEdit38.Text)<StrToFloat(ed_NOx_15_Norm.Text) then ed_NOx_15_Norm.Color:=clLime else ed_NOx_15_Norm.Color:=clRed;
    if StrToFloat(OPCEdit39.Text)<StrToFloat(ed_SO2_15_Norm.Text) then ed_SO2_15_Norm.Color:=clLime else ed_SO2_15_Norm.Color:=clRed;
    if StrToFloat(OPCEdit60.Text)<StrToFloat(ed_DE_15_Norm.Text) then ed_DE_15_Norm.Color:=clLime else ed_DE_15_Norm.Color:=clRed;
  except
  end;
end;

end.
