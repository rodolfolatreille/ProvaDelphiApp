unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfTarefa1 = class(TForm)
    lblColunas: TLabel;
    lblTabelas: TLabel;
    lblCondicoes: TLabel;
    lblSQLGerado: TLabel;
    mmColunas: TMemo;
    mmTabelas: TMemo;
    mmCondicoes: TMemo;
    mmSQLGerado: TMemo;
    btnGerarSQL: TButton;
    procedure btnGerarSQLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

uses uspQuery;
{$R *.dfm}

procedure TfTarefa1.btnGerarSQLClick(Sender: TObject);
var
  spQuery: TspQuery;
begin
   spQuery := TSPQuery.Create(nil);
   try
   spQuery.spColunas.Text := mmColunas.Text;
   spQuery.spTabelas.Text := mmTabelas.Text;
   spQuery.spCondicoes.Text := mmCondicoes.Text;

   mmSQLGerado.Text := spQuery.GeraSQL;
   except on e: Exception do
      begin
         SHowmessage(e.Message);
      end;
   end;

   FreeAndNil(spQuery);
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
