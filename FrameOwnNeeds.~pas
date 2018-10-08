unit FrameOwnNeeds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, OPCEdit, ExtCtrls;

type
  TfraOwnNeeds = class(TFrame)
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit57: TEdit;
    Edit80: TEdit;
    OPCEdit44: TOPCEdit;
    OPCEdit53: TOPCEdit;
    OPCEdit60: TOPCEdit;
    OPCEdit62: TOPCEdit;
    OPCEdit71: TOPCEdit;
    OPCEdit78: TOPCEdit;
    OPCEdit80: TOPCEdit;
    OPCEdit81: TOPCEdit;
    OPCEdit82: TOPCEdit;
    OPCEdit83: TOPCEdit;
    OPCEdit84: TOPCEdit;
    OPCEdit5: TOPCEdit;
    OPCEdit6: TOPCEdit;
    OPCEdit8: TOPCEdit;
    OPCEdit9: TOPCEdit;
    OPCEdit47: TOPCEdit;
    OPCEdit48: TOPCEdit;
    OPCEdit49: TOPCEdit;
    OPCEdit50: TOPCEdit;
    OPCEdit51: TOPCEdit;
    OPCEdit64: TOPCEdit;
    OPCEdit76: TOPCEdit;
    OPCEdit10: TOPCEdit;
    OPCEdit11: TOPCEdit;
    OPCEdit12: TOPCEdit;
    OPCEdit13: TOPCEdit;
    OPCEdit65: TOPCEdit;
    OPCEdit91: TOPCEdit;
    OPCEdit92: TOPCEdit;
    OPCEdit93: TOPCEdit;
    OPCEdit94: TOPCEdit;
    OPCEdit95: TOPCEdit;
    OPCEdit96: TOPCEdit;
    OPCEdit14: TOPCEdit;
    OPCEdit15: TOPCEdit;
    OPCEdit17: TOPCEdit;
    OPCEdit18: TOPCEdit;
    OPCEdit66: TOPCEdit;
    OPCEdit97: TOPCEdit;
    OPCEdit98: TOPCEdit;
    OPCEdit99: TOPCEdit;
    OPCEdit100: TOPCEdit;
    OPCEdit101: TOPCEdit;
    OPCEdit102: TOPCEdit;
    OPCEdit20: TOPCEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    OPCEdit21: TOPCEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    OPCEdit24: TOPCEdit;
    OPCEdit26: TOPCEdit;
    OPCEdit27: TOPCEdit;
    OPCEdit28: TOPCEdit;
    OPCEdit29: TOPCEdit;
    OPCEdit30: TOPCEdit;
    OPCEdit31: TOPCEdit;
    OPCEdit32: TOPCEdit;
    OPCEdit33: TOPCEdit;
    OPCEdit35: TOPCEdit;
    OPCEdit36: TOPCEdit;
    OPCEdit37: TOPCEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    OPCEdit38: TOPCEdit;
    Edit49: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    OPCEdit39: TOPCEdit;
    Edit55: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    OPCEdit40: TOPCEdit;
    Edit61: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    StaticText2: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText8: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    TimerOwnNeeds: TTimer;
    Edit69: TEdit;
    OPCEdit41: TOPCEdit;
    OPCEdit42: TOPCEdit;
    OPCEdit128: TOPCEdit;
    OPCEdit180: TOPCEdit;
    OPCEdit45: TOPCEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    Edit71: TEdit;
    StaticText30: TStaticText;
    Edit72: TEdit;
    StaticText31: TStaticText;
    OPCEdit46: TOPCEdit;
    OPCEdit54: TOPCEdit;
    OPCEdit55: TOPCEdit;
    OPCEdit56: TOPCEdit;
    OPCEdit57: TOPCEdit;
    OPCEdit58: TOPCEdit;
    OPCEdit68: TOPCEdit;
    OPCEdit69: TOPCEdit;
    OPCEdit72: TOPCEdit;
    OPCEdit73: TOPCEdit;
    OPCEdit74: TOPCEdit;
    st1: TStaticText;
    st2: TStaticText;
    st3: TStaticText;
    st4: TStaticText;
    st5: TStaticText;
    st6: TStaticText;
    StaticText1: TStaticText;
    st7: TStaticText;
    st8: TStaticText;
    st9: TStaticText;
    st10: TStaticText;
    procedure FrameEnter(Sender: TObject);
    procedure TimerOwnNeedsTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses
  MyCl;

procedure TfraOwnNeeds.FrameEnter(Sender: TObject);
begin
  TimerOwnNeeds.Enabled:=False;
  TimerOwnNeeds.Interval:=frmOPClient.seTimer.Value*100;
  TimerOwnNeeds.Enabled:=True;
end;

procedure TfraOwnNeeds.TimerOwnNeedsTimer(Sender: TObject);
var
  z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11:Real;
  TobrSredGor:Real;
begin
  try
    z1:=StrToFloat(OPCEdit44.Text); z2:=StrToFloat(OPCEdit53.Text); z3:=StrToFloat(OPCEdit60.Text); z4:=StrToFloat(OPCEdit62.Text);
    z5:=StrToFloat(OPCEdit71.Text); z6:=StrToFloat(OPCEdit78.Text); z7:=StrToFloat(OPCEdit80.Text); z8:=StrToFloat(OPCEdit81.Text);
    z9:=StrToFloat(OPCEdit83.Text); z10:=StrToFloat(OPCEdit82.Text); z11:=StrToFloat(OPCEdit84.Text);
    StaticText2.Caption:=FormatFloat('0.00',z1+z2+z3+z4+z5+z6+z7+z8+z9+z10+z11);
  except
    StaticText2.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit10.Text); z2:=StrToFloat(OPCEdit11.Text); z3:=StrToFloat(OPCEdit12.Text); z4:=StrToFloat(OPCEdit13.Text);
    z5:=StrToFloat(OPCEdit65.Text); z6:=StrToFloat(OPCEdit91.Text); z7:=StrToFloat(OPCEdit92.Text); z8:=StrToFloat(OPCEdit93.Text);
    z9:=StrToFloat(OPCEdit95.Text); z10:=StrToFloat(OPCEdit94.Text); z11:=StrToFloat(OPCEdit96.Text);
    StaticText5.Caption:=FormatFloat('0.00',z1+z2+z3+z4+z5+z6+z7+z8+z9+z10+z11);
  except
    StaticText5.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit14.Text); z2:=StrToFloat(OPCEdit15.Text); z3:=StrToFloat(OPCEdit17.Text); z4:=StrToFloat(OPCEdit18.Text);
    z5:=StrToFloat(OPCEdit66.Text); z6:=StrToFloat(OPCEdit97.Text); z7:=StrToFloat(OPCEdit98.Text); z8:=StrToFloat(OPCEdit99.Text);
    z9:=StrToFloat(OPCEdit101.Text); z10:=StrToFloat(OPCEdit100.Text); z11:=StrToFloat(OPCEdit102.Text);
    StaticText6.Caption:=FormatFloat('0.00',z1+z2+z3+z4+z5+z6+z7+z8+z9+z10+z11);
  except
    StaticText6.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit20.Text); z2:=StrToFloat(OPCEdit21.Text);
    StaticText8.Caption:=FormatFloat('0.00',z1+z2);
  except
    StaticText8.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit37.Text); z2:=StrToFloat(OPCEdit38.Text);
    StaticText11.Caption:=FormatFloat('0.00',z1+z2);
  except
    StaticText11.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit39.Text); z2:=StrToFloat(OPCEdit40.Text);
    StaticText12.Caption:=FormatFloat('0.00',z1+z2);
  except
    StaticText12.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit41.Text); z2:=StrToFloat(OPCEdit42.Text); z3:=StrToFloat(OPCEdit128.Text); z4:=StrToFloat(OPCEdit180.Text);
    z5:=StrToFloat(OPCEdit45.Text);
    TobrSredGor:=(z1+z2+z3+z4+z5)/5;
    StaticText18.Caption:=FormatFloat('0.00',TobrSredGor);
  except
    TobrSredGor:=0;
    StaticText18.Caption:=FormatFloat('0.00',TobrSredGor);
  end;
  try
    z1:=StrToFloat(OPCEdit24.Text);
    StaticText19.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText19.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit26.Text);
    StaticText20.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText20.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit27.Text);
    StaticText21.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText21.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit28.Text);
    StaticText22.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText22.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit29.Text);
    StaticText23.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText23.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit30.Text);
    StaticText24.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText24.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit31.Text);
    StaticText25.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText25.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit32.Text);
    StaticText26.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText26.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit35.Text);
    StaticText27.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText27.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit33.Text);
    StaticText28.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText28.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit36.Text);
    StaticText29.Caption:=FormatFloat('0.00',z1-TobrSredGor);
  except
    StaticText29.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(OPCEdit46.Text); z2:=StrToFloat(OPCEdit54.Text); z3:=StrToFloat(OPCEdit55.Text); z4:=StrToFloat(OPCEdit56.Text);
    z5:=StrToFloat(OPCEdit57.Text); z6:=StrToFloat(OPCEdit58.Text); z7:=StrToFloat(OPCEdit68.Text); z8:=StrToFloat(OPCEdit69.Text);
    z9:=StrToFloat(OPCEdit72.Text); z10:=StrToFloat(OPCEdit73.Text); z11:=StrToFloat(OPCEdit74.Text);
    StaticText30.Caption:=FormatFloat('0.00',z1+z2+z3+z4+z5+z6+z7+z8+z9+z10+z11);
  except
    StaticText30.Caption:=FormatFloat('0.00',0);
  end;
  try
    z1:=StrToFloat(StaticText6.Caption); z2:=StrToFloat(StaticText12.Caption);
    StaticText31.Caption:=FormatFloat('0.00',z1-z2);
  except
    StaticText31.Caption:=FormatFloat('0.00',0);
  end;
end;

end.
