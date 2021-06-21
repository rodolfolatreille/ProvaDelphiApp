unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB

  ;

type
  TspQuery = class(TFDQuery)
  private
    function ValidaEstrutura: Boolean;
    function FormataColunas(lstColunas: TStringList): String;
    function FormataCondicoes(lstCondicoes: TStringList): String;
    { Private declarations }
  protected
    { Protected declarations }
  public
    spCondicoes: TStringList;
    spColunas: TStringList;
    spTabelas: TStringList;

    function GeraSQL: String;

    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    { Public declarations }
  published
    property SQL;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  spCondicoes := TStringList.Create;
  spCondicoes.Clear;

  spColunas := TStringList.Create;
  spColunas.Clear;

  spTabelas := TStringList.Create;
  spTabelas.Clear;
end;

destructor TspQuery.Destroy;
begin

  inherited Destroy;
end;

function TspQuery.FormataColunas(lstColunas: TStringList): String;
var
   iFor: Integer;
begin
  Result := '';
  for iFor := 0 to lstColunas.Count - 1 do
  begin
    Result := Result + lstColunas.Strings[iFor] + ',';
  end;

  Result := Copy(Result, 1, Length(Result) - 1);  
end;

function TspQuery.FormataCondicoes(lstCondicoes: TStringList): String;
var
   iFor: Integer;
begin
  Result := '';
  if (lstCondicoes.Count > 0) then
  begin
    for iFor := 0 to lstCondicoes.Count - 1 do
    begin
      if (Trim(Result) = '') then
        Result := Result + ' where '
      else
        Result := Result + ' and ';

      Result := Result + lstCondicoes.Strings[iFor];
    end;
  end;   
end;

function TspQuery.GeraSQL: String;
begin
  Result := '';
  SQL.Clear;

  if (ValidaEstrutura) then
  begin
    Result := Result + ' SELECT ' + FormataColunas(spColunas);
    Result := Result + ' FROM ' + spTabelas.Text;
    Result := Result + ' ' + FormataCondicoes(spCondicoes);

    SQL.Text := Result;
  end;
end;

function TspQuery.ValidaEstrutura: Boolean;
begin
  Result := True;

  if ((spColunas.Count = 0) or (spTabelas.Count = 0)) then
    raise Exception.Create('Deve ser informado ao menos Colunas e Tabela');

  if (spTabelas.Count > 1) then
    raise Exception.Create('Deve ser informado somente uma tabela');  
end;

end.
