unit ScreenLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    edtEmail: TEdit;
    lblEmail: TLabel;
    BtnLogin: TButton;
    Label2: TLabel;
    EdtSenha: TEdit;
    BtnSair: TButton;
    Label1: TLabel;
    Label3: TLabel;
    CheckboxRememberMe: TCheckBox;
    Opcao: TComboBox;
    RDFechar: TRadioGroup;
    BtnRegistra: TButton;
    BtnClear: TButton;
    Button1: TButton;
    BtnCalc: TButton;
    procedure BtnLoginClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure CheckboxRememberMeClick(Sender: TObject);
    procedure OpcaoChange(Sender: TObject);
    procedure RDFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRegistraClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses ScreenRegister, ScreenCalc;

{$R *.dfm}

procedure TFrmLogin.BtnCalcClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCalculadora, FrmCalculadora);
  FrmCalculadora.ShowModal;
end;

procedure TFrmLogin.BtnClearClick(Sender: TObject);
begin
        EdtEmail.Clear;
        EdtSenha.Clear;
end;

procedure TFrmLogin.BtnLoginClick(Sender: TObject);
begin

  if (EdtEmail.Text	 = '') or (EdtSenha.Text = '') then
  begin
    ShowMessage('O email e/ou senha não podem estar vazios.');

  end
  else
  begin
    ShowMessage('Login bem-sucedido!');

  end;

end;

procedure TFrmLogin.BtnRegistraClick(Sender: TObject);
begin
   Application.CreateForm(TFrmRegistro, FrmRegistro);
   FrmRegistro.ShowModal;
end;

procedure TFrmLogin.BtnSairClick(Sender: TObject);
begin
  Close;
end;





procedure TFrmLogin.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  // Itera sobre todos os controles na tela
  for i := 0 to ComponentCount - 1 do
  begin
    // Verifica se o controle é um TEdit e limpa seu texto
    if Components[i] is TEdit then
      TEdit(Components[i]).Clear;
  end;
end;





procedure TFrmLogin.CheckboxRememberMeClick(Sender: TObject);
begin
    BtnLogin.Enabled := not CheckboxRememberMe.Checked;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
   CheckboxRememberMe.Checked := true;
   Opcao.ItemIndex := 1;
   RDFechar.ItemIndex := 1;
end;

procedure TFrmLogin.OpcaoChange(Sender: TObject);
begin
  BtnSair.Enabled := Opcao.ItemIndex = 0;
end;

procedure TFrmLogin.RDFecharClick(Sender: TObject);
begin
 BtnSair.Enabled := RDFechar.ItemIndex = 0;
end;

end.
