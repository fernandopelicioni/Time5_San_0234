unit UnitAlteraOso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  TFormAlteraOSOLote = class(TForm)
    Panel1: TPanel;
    QrOso: TADOQuery;
    DtLinhas: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    EditNovaOso: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DtTipoDia: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraOSOLote: TFormAlteraOSOLote;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormAlteraOSOLote.BitBtn1Click(Sender: TObject);
begin
         Screen.cursor:=crHourGlass;
              with QrOso do
                  Begin
                       close;
                       Sql.Clear;
                       Sql.Add('update tb_EscHorarios set Hor_Oso = ' + QuotedStr(EditNovaOso.Text));
                       Sql.Add('Where Hor_linha = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                       Sql.Add('And Hor_Tipo = ' + QuotedStr(DBLookupComboBox1.KeyValue)) ;
                       ExecSQL;
                  End;
               MessageBox(0, 'Atualiza��o n�o apresentou erros, verifique se est� tudo normal', 'Atualizado', MB_ICONINFORMATION or MB_OK);

         Screen.Cursor:=crDefault;
end;

procedure TFormAlteraOSOLote.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormAlteraOSOLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFormAlteraOSOLote.FormShow(Sender: TObject);
begin
        With Pai.QrLinhas do
             begin
                   close;
                   Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                   Open;
             end;
        DtTipoDia.DataSet.Open;
end;

end.
