unit uRedefinirSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uHome;

type

  { TFrmRedefinirSenha }

  TFrmRedefinirSenha = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edtUsuarioRedefinirSenha: TEdit;
    edtNovaSenha: TEdit;
    edtConfirmarSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure edtUsuarioRedefinirSenhaChange(Sender: TObject);
    procedure edtUsuarioRedefinirSenhaClick(Sender: TObject);
  private

  public
   usuario, senha : string;
  end;

var
  FrmRedefinirSenha: TFrmRedefinirSenha;

implementation

{$R *.lfm}

{ TFrmRedefinirSenha }

procedure TFrmRedefinirSenha.Button2Click(Sender: TObject);
begin
  if edtNovaSenha.Text = edtConfirmarSenha.Text then
   begin
    usuario:=edtUsuarioRedefinirSenha.Text;
    senha:= edtConfirmarSenha.Text;
    FrmRedefinirSenha.close;
    frmHome:= TfrmHome.Create(Self);
    frmHome.ShowModal

   end else
     Label4.Visible:=True;

end;



procedure TFrmRedefinirSenha.edtUsuarioRedefinirSenhaClick(Sender: TObject);
begin
  if Label4.Visible = True then
   begin
   edtConfirmarSenha.Text:='';
   edtUsuarioRedefinirSenha.Text:='';
   edtNovaSenha.Text:='';
   Label4.Visible:=False
   end;
end;



end.

