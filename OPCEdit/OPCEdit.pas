unit OPCEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TOPCEdit = class(TEdit)
  private
    { Private declarations }
    FOPCTag: string;
    FReserve: string;
  protected
    procedure SetOPCTag(AValue: String);
  public
    { Public declarations }
  published
    { Published declarations }
    property OPCTag: string read FOPCTag write FOPCTag;
    property Reserve: string read FReserve write FReserve;
  end;

procedure Register;

implementation

procedure TOPCEdit.SetOPCTag(AValue: String);
begin
  FOPCTag := AValue;
  Self.Text := AValue;
  Self.Name := AValue;
end;


procedure Register;
begin
  RegisterComponents('Data Controls', [TOPCEdit]);
end;

end.
