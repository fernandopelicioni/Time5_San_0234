unit TelaFeriado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, CJVEditDate, ExtCtrls, DB, DBTables,
  DBCtrls;

type
  TFormFeriado = class(TForm)
    Panel1: TPanel;
    EditData: TCJVEditDate;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    s: TLabel;
    query1: TTable;
    DataSource1: TDataSource;
    query1Matricula: TStringField;
    query1DIA_MES_ANO: TDateField;
    query1TIPO_DIA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
     banco:string;
    { Public declarations }
  end;

var
  FormFeriado: TFormFeriado;

implementation

{$R *.dfm}

procedure TFormFeriado.BitBtn1Click(Sender: TObject);
var
i :integer;
begin
with Query1 do
     begin
     close;
     filter:='Dia_Mes_ano = ' + s.caption + editData.Text + s.caption ;
     filtered:=true;
     Open;
     first;
     if not eof then
          begin
          repeat
          if Query1TIPO_DIA.Text = 'N' then
                begin
                Query1.Edit;
                Query1TIPO_DIA.Text:='R';
                I:=I+1;
                Query1.post;
                end;
          Next;
          Until Eof;
          End;
     End;
ShowMessage('A concessão de Feriado foi realizada com sucesso, ' + IntToStr(I) + ' funcionários foram beneficiados');
close;
end;

procedure TFormFeriado.BitBtn2Click(Sender: TObject);
begin
with Query1 do
     begin
     close;
     filter:='Dia_Mes_ano = ' + s.caption + editData.Text + s.caption ;
     filtered:=true;
     Open;
     first;
     if not eof then
          begin
          repeat
          if Query1TIPO_DIA.Text = 'R' then
                begin
                Edit;
                Query1TIPO_DIA.Text:='N';
                post;
                end;
          Next;
          Until Eof;
          End;
     End;
ShowMessage('Você acabou de cancelar o beneficio de Feriado para os Colaboradores, Eles Merecem?');
Close;

end;

procedure TFormFeriado.FormActivate(Sender: TObject);
begin
//query1.SQL:='select * from;
EditData.text:=DateToStr(now);
end;

end.
