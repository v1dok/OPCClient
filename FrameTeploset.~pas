unit FrameTeploset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, FrameTeplosetBalans, FrameCollectSPT, FrameCollectSHA711,
  ComCtrls, FrameTurb_NGVS, ExtCtrls, OPCEdit, FrameGradirnya,
  FrameOwnNeeds;

type
  TfraBalans = class(TFrame)
    pcTeplo: TPageControl;
    tsSHA711: TTabSheet;
    fraCollectSHA7111: TfraCollectSHA711;
    tsSPT: TTabSheet;
    fraCollectSPT1: TfraCollectSPT;
    tsBalans: TTabSheet;
    fraTeplosetBalans1: TfraTeplosetBalans;
    tsNGVS: TTabSheet;
    fraTeplo_NGVS1: TfraTurb_NGVS;
    TimerBalans: TTimer;
    TabSheet1: TTabSheet;
    fraGradirnya1: TfraGradirnya;
    TabSheet2: TTabSheet;
    fraOwnNeeds1: TfraOwnNeeds;
    procedure TimerBalansTimer(Sender: TObject);
    procedure pcTeploChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfraBalans.TimerBalansTimer(Sender: TObject);
begin
  try
    fraTeplosetBalans1.StaticText16.Caption:=FormatFloat('0.00',StrToFloat(fraTeplosetBalans1.OPCEdit1.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit8.Text)+StrToFloat(fraTeplosetBalans1.OPCEdit14.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit20.Text)+StrToFloat(fraTeplosetBalans1.OPCEdit26.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit38.Text)+StrToFloat(fraTeplosetBalans1.OPCEdit44.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit3.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit11.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit17.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit23.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit29.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit41.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit47.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit7.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit110.Text)+StrToFloat(fraTeplosetBalans1.OPCEdit111.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit112.Text));

    fraTeplosetBalans1.StaticText17.Caption:=FormatFloat('0.00',StrToFloat(fraTeplosetBalans1.OPCEdit92.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit95.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit101.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit104.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit98.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit107.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit129.Text));

    fraTeplosetBalans1.StaticText18.Caption:=FormatFloat('0.00',StrToFloat(fraTeplosetBalans1.OPCEdit115.Text)+
    StrToFloat(fraTeplosetBalans1.OPCEdit116.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit113.Text)-
    StrToFloat(fraTeplosetBalans1.OPCEdit114.Text)-StrToFloat(fraTeplosetBalans1.OPCEdit119.Text));

  except
  end;
end;

procedure TfraBalans.pcTeploChange(Sender: TObject);
begin
  if pcTeplo.ActivePage.Controls[0].Name='fraTeplosetBalans1' then TimerBalansTimer(Self);
end;

end.
