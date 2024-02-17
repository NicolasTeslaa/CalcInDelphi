unit ScreenCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalculadora = class(TForm)
    EditValue: TEdit;
    BtnAdd: TButton;
    BtnSubtrai: TButton;
    btnDividir: TButton;
    BtnMultiplicacao: TButton;
    BtnResult: TButton;
    LblResult: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnMultiplicacaoClick(Sender: TObject);
    procedure BtnResultClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnSubtraiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;
  selecionado: string;
  primeiroValor, segundoValor: Double;
  resultado: Double;

implementation

{$R *.dfm}

procedure TFrmCalculadora.BtnAddClick(Sender: TObject);
begin
  primeiroValor := strToInt(EditValue.Text);
  EditValue.Clear;
  selecionado := '+';
end;

procedure TFrmCalculadora.btnDividirClick(Sender: TObject);
begin
  primeiroValor := strToInt(EditValue.Text);
  EditValue.Clear;
  selecionado := '/';
end;

procedure TFrmCalculadora.BtnMultiplicacaoClick(Sender: TObject);
begin
  primeiroValor := strToInt(EditValue.Text);
  EditValue.Clear;
  selecionado := '*';
end;

procedure TFrmCalculadora.BtnResultClick(Sender: TObject);
begin
  segundoValor := strToInt(EditValue.Text);
  EditValue.Clear;

  // Verifica a opera��o selecionada e realiza o c�lculo correspondente
  if selecionado = '*' then
  begin
    resultado := primeiroValor * segundoValor;
    LblResult.Caption := FloatToStr(resultado);
    LblResult.Font.Color := clWhite;
  end
  else if selecionado = '+' then
  begin
    resultado := primeiroValor + segundoValor;
    LblResult.Caption := FloatToStr(resultado);
    LblResult.Font.Color := clWhite;
  end
  else if selecionado = '-' then
  begin
    resultado := primeiroValor - segundoValor;
    LblResult.Caption := FloatToStr(resultado);
    LblResult.Font.Color := clWhite;
  end
  else if selecionado = '/' then
  begin
    // Verifica se o segundo valor � zero para evitar divis�o por zero
    if segundoValor <> 0 then
    begin
      resultado := primeiroValor / segundoValor;
      LblResult.Caption := FloatToStr(resultado);
      LblResult.Font.Color := clWhite;
    end
    else
    begin
      LblResult.Caption := 'Erro: divis�o por zero';
      LblResult.Font.Color := clRed;
    end;
  end
  else
  begin
    LblResult.Caption := 'Opera��o inv�lida';
    LblResult.Font.Color := clRed;
  end;

  // Limpa a opera��o selecionada
  selecionado := '';
end;

procedure TFrmCalculadora.BtnSubtraiClick(Sender: TObject);
begin
  primeiroValor := strToInt(EditValue.Text);
  EditValue.Clear;
  selecionado := '-';
end;

procedure TFrmCalculadora.FormShow(Sender: TObject);
begin
  BtnAdd.Width := 73;
  BtnAdd.Height := 82;
  BtnSubtrai.Width := 73;
  BtnSubtrai.Height := 82;
  btnDividir.Width := 73;
  btnDividir.Height := 82;
  BtnMultiplicacao.Width := 73;
  BtnMultiplicacao.Height := 82;
  FrmCalculadora.Color := clWindowFrame;
end;

function strToInt(valor: string): Integer;
var
  i, potenciaDez, num: Integer;
begin
  // Inicializa o n�mero resultante como 0
  num := 0;

  // Loop reverso pela string para extrair cada d�gito
  for i := Length(valor) downto 1 do
  begin
    // Converte o caractere para o valor num�rico correspondente
    num := num + (Ord(valor[i]) - Ord('0')) * potenciaDez;
    // Incrementa a pot�ncia de 10 para mover para o pr�ximo d�gito
    potenciaDez := potenciaDez * 10;
  end;

end;


end.
