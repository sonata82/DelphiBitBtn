unit DelphiBitBtn;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Buttons;

{$R logo.res}

type
  { TDelphiBitBtn }
  TDelphiBitBtn = class(TBitBtn)
  private

  protected
    procedure InitializeWnd; override;
  public
    constructor Create(AOwner: TComponent); override;
  published

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Additional',[TDelphiBitBtn]);
end;

constructor TDelphiBitBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  if not (csDesigning in ComponentState) then
    DefaultCaption := True;
end;

procedure TDelphiBitBtn.InitializeWnd;
begin
  inherited InitializeWnd;

  if (Kind <> bkCustom) and not (csDesigning in ComponentState) then
  begin
    ModalResult := BitBtnModalResults[Kind];
    Default := Kind in [bkOk, bkYes];
    Cancel := Kind in [bkCancel, bkNo];
  end;
end;

end.
