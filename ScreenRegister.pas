unit ScreenRegister;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmRegistro = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegistro: TFrmRegistro;


implementation

{$R *.dfm}

procedure TFrmRegistro.Button1Click(Sender: TObject);
begin
    FrmRegistro.Color := clWebDarkOrange;
end;

procedure TFrmRegistro.Button2Click(Sender: TObject);
begin
     FrmRegistro.Color := clBlue;

end;

end.
