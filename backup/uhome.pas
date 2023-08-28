unit uHome;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, uCadastroDeCliente;

type

  { TfrmHome }

  TfrmHome = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure MenuItem6Click(Sender: TObject);
  private

  public

  end;

var
  frmHome: TfrmHome;

implementation
uses uLogin;

{$R *.lfm}

{ TfrmHome }


procedure TfrmHome.MenuItem6Click(Sender: TObject);
begin
   frmHome.close;
   frmCadastroDeClientes:= TfrmCadastroDeClientes.Create(Self);
   frmCadastroDeClientes.ShowModal;
end;

procedure TfrmHome.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  frmLogin.close;
end;

end.

