unit uLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uRedefinirSenha;

type

  { TfrmLogin }

  TfrmLogin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtUsuarioClick(Sender: TObject);
  private

  public

  end;

var
  frmLogin: TfrmLogin;
  usuario: string;
  senha: string;

implementation
uses uHome;

{$R *.lfm}

{ TfrmLogin }



procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmLogin.Button2Click(Sender: TObject);
begin
  frmLogin.Visible:=False;
  FrmRedefinirSenha:= TFrmRedefinirSenha.Create(Self);
  FrmRedefinirSenha.ShowModal;

end;

procedure TfrmLogin.Button3Click(Sender: TObject);

begin
  if ( edtUsuario.Text = 'pedro') AND ( edtSenha.Text = '1234') OR ( edtUsuario.Text = usuario) AND ( edtSenha.Text = senha) then
    Begin
         frmLogin.Visible:=False;
         frmHome:= TfrmHome.Create(Self);
         frmHome.ShowModal;

    end
  else
    begin
         Label3.Visible:=True;
         edtSenha.Text:='';
         edtUsuario.Text:='';
    end;

end;

procedure TfrmLogin.edtUsuarioClick(Sender: TObject);
begin
   Label3.Visible:=False;
end;

end.

