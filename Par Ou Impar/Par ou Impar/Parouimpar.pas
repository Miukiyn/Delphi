unit Parouimpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

function lerNumero(valor: Integer): Integer; cdecl; external 'dll\numbers.dll';

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  resultado: Integer;
  valor: Integer;
begin
  // Obtenha o valor do Edit1 e converta para inteiro
  valor := StrToIntDef(Edit1.Text, 0);

  // Passe o valor para a funcao lerNumero
  resultado := lerNumero(valor);

  // Fa�a o resto do seu processamento conforme necess�rio
  if resultado = 1 then
    ShowMessage('O n�mero � par')
  else if resultado = 0 then
    ShowMessage('O n�mero � �mpar')
  else
    ShowMessage('Erro na leitura do n�mero: ' + IntToStr(resultado));
end;

end.

