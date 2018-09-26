unit UnitHorariosEdicaoRapida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, Buttons;

type
  TFormHorariosEdicaoRapida = class(TForm)
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DtLinhas: TDataSource;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QrTabela: TADOQuery;
    DtTabelas: TDataSource;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    QrMov: TADOQuery;
    DtMov: TDataSource;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    DtTipoOperacao: TDataSource;
    Qrapaga: TADOQuery;
    Label4: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHorariosEdicaoRapida: TFormHorariosEdicaoRapida;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormHorariosEdicaoRapida.DBLookupComboBox3Enter(Sender: TObject);
begin
     QrMov.Close;
end;

procedure TFormHorariosEdicaoRapida.DBLookupComboBox3Exit(Sender: TObject);
begin
         With QrTabela do
              Begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    Parameters.ParamByName('tipodia').Value:=DBLookupComboBox3.KeyValue;
                    Open;
              End;

end;

procedure TFormHorariosEdicaoRapida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DtLinhas.DataSet.Close;
       DtTabelas.DataSet.Close;
       DtMov.DataSet.Close;
       Action:=cafree;
end;

procedure TFormHorariosEdicaoRapida.FormShow(Sender: TObject);
begin
         With Pai.QrLinhas do
              Begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    Open;
              End;
         With QrTabela do
              Begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    Parameters.ParamByName('tipodia').Value:=DBLookupComboBox3.KeyValue;
                    Open;
              End;

         DtTipoOperacao.DataSet.Open;
end;

procedure TFormHorariosEdicaoRapida.SpeedButton1Click(Sender: TObject);
begin
          With QrMov do
               begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Select Substring(Convert(char,Hor_Hora ,108),1,5) as Hora, Hor_Linha as Linha, Hor_Iti as Iti, Hor_Inf as Inf,');
                     Sql.Add('Hor_tabela as Tabela, b.vei_numero as Veiculo, Hor_oso as Oso, Hor_Id');
                     Sql.Add('from tb_EscHorarios');
                     Sql.Add('Left Join TB_VEICULOS B on B.vei_nun = HOR_VEICULO');
                     Sql.Add('Where Hor_Tipo = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                     if DBLookupComboBox1.KeyValue <> Null then
                             Sql.Add('And Hor_linha = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                     if DBLookupComboBox2.KeyValue <> Null then
                             Sql.Add('And Hor_Tabela = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                     Sql.Add('Order By Hor_Hora');
                     Open;
                     //memo1.Text:=sql.text;
                     Label4.Caption:=IntToStr(QrMov.RecordCount) + ' Horarios encontrados nesta tabela';

               end;
end;

procedure TFormHorariosEdicaoRapida.SpeedButton2Click(Sender: TObject);
begin
          if (MessageDlg('Confirma a remoção do registro selecionado', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
                    begin
                          with Qrapaga do
                              begin
                                close;
                                sql.Add('delete tb_escHorarios where Hor_Id = ' + DtMov.DataSet.FieldByName('hor_ID').AsString);
                                ExecSQL;
                              end;
                          DtMov.DataSet.close;
                          DtMov.DataSet.Open;
                    end;
end;

procedure TFormHorariosEdicaoRapida.SpeedButton3Click(Sender: TObject);
begin
Close;
end;

end.
