unit CprogramDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

// Declara��o da fun��o da DLL
// 'notepad_opener.dll' � o nome da DLL e 'ExecuteSwitch' � o nome da fun��o na DLL
procedure ExecuteSwitch(switchValue: Integer); cdecl; external 'notepad_opener.dll';

procedure TForm2.Button1Click(Sender: TObject);
begin
  try
    // Adicione uma mensagem de depura��o para verificar se o bot�o foi clicado
    //ShowMessage('Bot�o Clicado');

    // Chama a fun��o da DLL com o valor do switch desejado
    ExecuteSwitch(1); // Substitua o argumento conforme necess�rio

    // Adicione uma mensagem de depura��o ap�s a chamada da DLL
    //ShowMessage('Chamada da DLL conclu�da');
  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;


end.

