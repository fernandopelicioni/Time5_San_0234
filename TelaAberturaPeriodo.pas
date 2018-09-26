unit TelaAberturaPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvComponent, JvButton, JvTransparentButton,
  StdCtrls, XPMan, ActnMan, ActnColorMaps, Buttons, ComCtrls, DB, DBTables;

type
  TFormAberturaperiodo = class(TForm)
    TwilightColorMap1: TTwilightColorMap;
    XPManifest1: TXPManifest;
    JvTransparentButton1: TJvTransparentButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Sequencial: TIntegerField;
    Query1COM_PRIMEIRA: TDateField;
    Query1COM_SEGUNDA: TDateField;
    Query1COM_TERCEIRA: TDateField;
    Query1COM_QUARTA: TDateField;
    Query1COM_QUINTA: TDateField;
    Query1JORNADA_MAXIMA: TStringField;
    Query1INICIO_ADCIONAL: TStringField;
    Query1FIM_ADCIONAL: TStringField;
    Query1INTERVALO_TIPO: TStringField;
    Query1PERIODO_INICIAL: TDateField;
    Query1PERIODO_FINAL: TDateField;
    Query1FERIADO: TStringField;
    Query1FALTA: TStringField;
    Query1SUSPENSAO: TStringField;
    Query1HORAEXTRA: TStringField;
    Query1REFLEXOEXTRA: TStringField;
    Query1ADICIONAL: TStringField;
    Query1Limite_horas: TStringField;
    DataInicial: TDateTimePicker;
    DataFinal: TDateTimePicker;
    BitBtn1: TBitBtn;
    Table1: TTable;
    procedure JvTransparentButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAberturaperiodo: TFormAberturaperiodo;

implementation

{$R *.dfm}

procedure TFormAberturaperiodo.JvTransparentButton1Click(Sender: TObject);
var
  SR: TSearchRec;
  I: integer;
  Origem, Destino: string;
begin
  I := FindFirst('c:\fp-sys\markeytor\db\*.*', faAnyFile, SR);
  while I = 0 do begin
    if (SR.Attr and faDirectory) <> faDirectory then begin
      Origem := 'c:\fp-sys\markeytor\db\' + SR.Name;
      Destino:= 'c:\fp-sys\markeytor\fev2010' + SR.Name;
      if not CopyFile(PChar(Origem), PChar(Destino), true) then
        ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
    end;
    I := FindNext(SR);
  end;
end;
end.
