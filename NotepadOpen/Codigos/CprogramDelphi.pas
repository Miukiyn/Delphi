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

// Declaração da função da DLL
// 'notepad_opener.dll' é o nome da DLL e 'ExecuteSwitch' é o nome da função na DLL
procedure ExecuteSwitch(switchValue: Integer); cdecl; external 'notepad_opener.dll';

procedure TForm2.Button1Click(Sender: TObject);
begin
  try
    // Adicione uma mensagem de depuração para verificar se o botão foi clicado
    //ShowMessage('Botão Clicado');

    // Chama a função da DLL com o valor do switch desejado
    ExecuteSwitch(1); // Substitua o argumento conforme necessário

    // Adicione uma mensagem de depuração após a chamada da DLL
    //ShowMessage('Chamada da DLL concluída');
  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;


end.

