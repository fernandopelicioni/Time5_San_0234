unit TelaModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TModule = class(TDataModule)
    DtDiaro: TDataSource;
    DtFuncionario: TDataSource;
    TBFUNCAO: TTable;
    DTFUNCAO: TDataSource;
    qRfUNCIONARIO: TQuery;
    qRfUNCIONARIOMATRICULA: TStringField;
    qRfUNCIONARIOFUNCAO: TStringField;
    qRfUNCIONARIOOPERAVEICULO: TBooleanField;
    qRfUNCIONARIONome: TStringField;
    qRfUNCIONARIOSITUACAO: TStringField;
    TBFUNCAOCODIGO: TStringField;
    TBFUNCAODESCRICAO: TStringField;
    TBFUNCAOHORA_DIARIA: TStringField;
    TBFUNCAOCOMPESA: TBooleanField;
    TBFUNCAOOPERA_VEICULO: TBooleanField;
    TBFUNCAOREDUCAO_INTERVALO: TStringField;
    TBFUNCAOLIMITE_HORAS: TStringField;
    qRfUNCIONARIOINATIVO_INICIO: TDateField;
    qRfUNCIONARIOINATIVO_FIM: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Module: TModule;

implementation

{$R *.dfm}

end.
