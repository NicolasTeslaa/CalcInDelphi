program Project1;

uses
  Vcl.Forms,
  ScreenLogin in 'ScreenLogin.pas' {FrmLogin},
  ScreenRegister in 'ScreenRegister.pas' {FrmRegistro},
  ScreenCalc in 'ScreenCalc.pas' {FrmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
