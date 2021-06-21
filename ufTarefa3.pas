unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls;

type
  TfTarefa3 = class(TForm)
    dbgDados: TDBGrid;
    btnForcarCarga: TButton;
    btnObterTotal: TButton;
    edtTotal: TEdit;
    Label1: TLabel;
    btnObterTotalDivisao: TButton;
    edtTotalDivisao: TEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1sss: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnForcarCargaClick(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterTotalDivisaoClick(Sender: TObject);
  private
   cds: TClientDataSet;
   ds: TDataSource;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.btnForcarCargaClick(Sender: TObject);
var
   iFor: Integer;
begin
//   cdsDados.EmptyDataSet;
//
//   for iFor := 1 to 10 do
//   begin
//      cdsDados.Append;
//
//      cdsDadosIDPROJETO.AsInteger := iFor;
//      cdsDadosNOMEPROJETO.AsString := 'Projeto ' + IntToStr(iFor);
//      cdsDadosVALOR.AsFloat := (iFor * 10);
//
//      cdsDados.Post;
//   end;

   cds.EmptyDataSet;

   for iFor := 1 to 10 do
   begin
      cds.Append;

      cds.FieldByName('IDPROJETO').AsInteger := iFor;
      cds.FieldByName('NOMEPROJETO').AsString := 'Projeto ' + IntToStr(iFor);
      cds.FieldByName('VALOR').AsFloat := (iFor * 10);

      cds.Post;
   end;
end;

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
var
   rTotal: Real;
begin
   rTotal := 0;

   cds.DisableControls;
   cds.First;
   while not cds.Eof do
   begin
      rTotal := rTotal + cds.FieldByName('VALOR').AsFloat;
      cds.Next;
   end;
   cds.EnableControls;

   edtTotal.Text := FormatFloat('#,###,###,##0.00', rTotal);
end;

procedure TfTarefa3.btnObterTotalDivisaoClick(Sender: TObject);
var
   rParcial, rTotal: Real;
   fValor: array [0..1] of Real;
begin
   fValor[0] := 0;
   fValor[1] := 0;

   rTotal := 0;

   cds.First;
   while not cds.Eof do
   begin
      if cds.RecNo = 1 then
      begin
         fValor[0] := cds.FieldByName('VALOR').AsFloat;
      end else begin
        fValor[1] := cds.FieldByName('VALOR').AsFloat;

         rParcial := fValor[1] / fValor[0];
         rTotal := rParcial + rTotal;

         fValor[0] := fValor[1];
         fValor[1] := 0;
      end;
      cds.Next;
   end;

   edtTotalDivisao.Text := FormatFloat('#,###,###,##0.00', rTotal);
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
   cds := TClientDataSet.Create(nil);
   cds.Close;
   cds.FieldDefs.Clear;

   cds.FieldDefs.Add('IdProjeto', ftInteger);
   cds.FieldDefs.Add('NomeProjeto', ftString, 50);
   cds.FieldDefs.Add('Valor', ftFloat);

   cds.CreateDataSet;

   TFloatField(cds.FieldByName('Valor')).DisplayFormat := '#,###,###,##.00';

   ds := TDataSource.Create(Self);
   ds.DataSet := cds;

   dbgDados.DataSource := ds;

end;

end.
