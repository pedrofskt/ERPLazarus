unit uCadastroDeCliente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, uTelaModelo;

type

  { TfrmCadastroDeClientes }

  TfrmCadastroDeClientes = class(TfrmTelaModelo)
    edtCpf: TEdit;
    edtCpf1: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    edtTelefone1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure MenuItem13Click(Sender: TObject);

  private

  public

  end;

var
  frmCadastroDeClientes: TfrmCadastroDeClientes;

implementation
uses uLogin, uHome;

{$R *.lfm}

{ TfrmCadastroDeClientes }



procedure TfrmCadastroDeClientes.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  frmLogin.close;
end;

procedure TfrmCadastroDeClientes.MenuItem13Click(Sender: TObject);
var CloseAction: TCloseAction);
begin
   CloseAction:= CloseAction;
   frmCadastroDeClientes.close;
   frmHome:= TfrmHome.Create(Self);
   frmHome.ShowModal;
end;

end.

