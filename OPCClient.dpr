program MyOPC;

{$IFDEF VER150}
{$WARN UNSAFE_CAST OFF}
{$WARN UNSAFE_TYPE OFF}
{$ENDIF}

uses
  Windows,
  Forms,
  ComObj,
  ActiveX,
  SysUtils,
  OPCtypes,
  OPCDA,
  OPCutils,
  MyCl in 'MyCl.pas' {frmOPClient},
  FrameSummary in 'FrameSummary.pas' {fraSummary: TFrame},
  FrameCollectSPT in 'FrameCollectSPT.pas' {fraCollectSPT: TFrame},
  FrameChemist in 'FrameChemist.pas' {fraChemist1: TFrame},
  FrameChemist2 in 'FrameChemist2.pas' {fraChemist2: TFrame},
  FrameTurb_Ochered4 in 'FrameTurb_Ochered4.pas' {fraTurb_Ochered4: TFrame},
  FrameTurb in 'FrameTurb.pas' {fraTurb: TFrame},
  FrameTurb_Ochered5 in 'FrameTurb_Ochered5.pas' {fraTurb_Ochered5: TFrame},
  FrameTurb_TA10 in 'FrameTurb_TA10.pas' {fraTurb_TA10: TFrame},
  FrameTurb_Ochered7 in 'FrameTurb_Ochered7.pas' {fraTurb_Ochered7: TFrame},
  FrameTurb_ROU10_13 in 'FrameTurb_ROU10_13.pas' {fraTurb_ROU10_13: TFrame},
  FrameTurb_KA in 'FrameTurb_KA.pas' {fraTurb_KA: TFrame},
  FrameCollectSHA711 in 'FrameCollectSHA711.pas' {fraCollectSHA711: TFrame},
  FrameTurb_NGVS in 'FrameTurb_NGVS.pas' {fraTurb_NGVS: TFrame},
  FrameTeplosetBalans in 'FrameTeplosetBalans.pas' {fraTeplosetBalans: TFrame},
  FrameBereg in 'FrameBereg.pas' {fraBereg: TFrame},
  FrameTeploset in 'FrameTeploset.pas' {fraBalans: TFrame},
  FrameGradirnya in 'FrameGradirnya.pas' {fraGradirnya: TFrame},
  FrameTurb_Och4KA in 'FrameTurb_Och4KA.pas' {fraKA4och: TFrame},
  FrameTurb_Och5KA in 'FrameTurb_Och5KA.pas' {fraKA5och: TFrame},
  FrameTurb_Och6KA in 'FrameTurb_Och6KA.pas' {fraKA6och: TFrame},
  FrameTurb_Och7KA in 'FrameTurb_Och7KA.pas' {fraKA7och: TFrame},
  FrameTurb_PDU in 'FrameTurb_PDU.pas' {fraTurb_PDU: TFrame},
  FrameOwnNeeds in 'FrameOwnNeeds.pas' {fraOwnNeeds: TFrame},
  FormAbout in 'FormAbout.pas' {FormAbout1},
  FrameGASMET in 'FrameGASMET.pas' {fraGASMET: TFrame},
  FrameAskue in 'FrameAskue.pas' {fraAskue: TFrame},
  FrameTurb_Och6Acoustics in 'FrameTurb_Och6Acoustics.pas' {FraAc6och: TFrame},
  FrameTurb_TA12 in 'FrameTurb_TA12.pas' {fraTurb_TA12: TFrame},
  FrameTurb_TEP_TA4_9 in 'FrameTurb_TEP_TA4_9.pas' {fraTEP_TA4_9: TFrame},
  FrameTurb_TEP_TA10_12 in 'FrameTurb_TEP_TA10_12.pas' {fraTEP_TA10_12: TFrame},
  FrameTurb_TEP_KA7_15 in 'FrameTurb_TEP_KA7_15.pas' {fraTEP_KA7_15: TFrame},
  FrameUPS in 'FrameUPS.pas' {fraUPS: TFrame};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'OPC Client for WinCC';
  Application.CreateForm(TfrmOPClient, frmOPClient);
  Application.CreateForm(TFormAbout1, FormAbout1);
  Application.Run;
end.
