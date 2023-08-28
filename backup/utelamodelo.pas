unit uTelaModelo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus;

type

  { TfrmTelaModelo }

  TfrmTelaModelo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    frm: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Panel1: TPanel;
    procedure MenuItem10Click(Sender: TObject);
  private

  public

  end;

var
  frmTelaModelo: TfrmTelaModelo;

implementation
uses uLogin;

{$R *.lfm}

{ TfrmTelaModelo }

procedure TfrmTelaModelo.MenuItem10Click(Sender: TObject);
begin
   frmLogin.close;
end;

end.

