unit FrameTurb;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FrameTurb_Ochered4, ComCtrls, FrameTurb_Ochered5, FrameTurb_TA10, 
  FrameTurb_Ochered7, FrameTurb_ROU10_13, FrameTurb_KA, 
  OPCEdit, StdCtrls, FrameTurb_NGVS, FrameTurb_Och4KA, FrameTurb_Och5KA,
  FrameTurb_Och6KA, FrameTurb_Och7KA, FrameTurb_PDU, FrameGASMET,
  FrameTurb_Och6Acoustics, FrameTurb_TA12, FrameTurb_TEP_TA4_9,
  FrameTurb_TEP_TA10_12, FrameTurb_TEP_KA7_15;

type
  TfraTurb = class(TFrame)
    pcTurb: TPageControl;
    tsOchered4: TTabSheet;
    fraTurb_Ochered41: TfraTurb_Ochered4;
    tsOchered5: TTabSheet;
    tsTA10_11: TTabSheet;
    tsOchered7: TTabSheet;
    tsROU10_13: TTabSheet;
    fraTurb_Ochered51: TfraTurb_Ochered5;
    fraTurb_ROU10_131: TfraTurb_ROU10_13;
    tsKA: TTabSheet;
    fraTurb_KA1: TfraTurb_KA;
    fraTurb_TA101: TfraTurb_TA10;
    fraTurb_Ochered71: TfraTurb_Ochered7;
    tsOch4KC: TTabSheet;
    fraKA4och1: TfraKA4och;
    tsOch5KC: TTabSheet;
    fraKA5och1: TfraKA5och;
    tsOch6KC: TTabSheet;
    fraKA6och1: TfraKA6och;
    tsOch7KC: TTabSheet;
    fraKA7och1: TfraKA7och;
    tsPDU: TTabSheet;
    fraTurb_PDU1: TfraTurb_PDU;
    tsGASMET: TTabSheet;
    fraGASMET1: TfraGASMET;
    fraAcoustics: TTabSheet;
    FraAc6och1: TFraAc6och;
    tsTA12: TTabSheet;
    fraTurb_TA121: TfraTurb_TA12;
    tsTEP_TA4_9: TTabSheet;
    fraTEP_TA4_91: TfraTEP_TA4_9;
    tsTEP_TA10_12: TTabSheet;
    fraTEP_TA10_121: TfraTEP_TA10_12;
    tsTEP_KA7_15: TTabSheet;
    fraTEP_KA7_151: TfraTEP_KA7_15;
    procedure pcTurbChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfraTurb.pcTurbChange(Sender: TObject);
begin
  if pcTurb.ActivePage.Controls[0].Name='fraTurb_KA1' then fraTurb_KA1.tmrKA.Enabled:=True else fraTurb_KA1.tmrKA.Enabled:=False;
  if pcTurb.ActivePage.Controls[0].Name='fraGASMET1' then fraGASMET1.tmrSetColorASPKTimer(Self);
end;

end.
