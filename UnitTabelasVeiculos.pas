unit UnitTabelasVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, ADODB;

type
  TFormTabelasVeiculos = class(TForm)
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DtLinha: TDataSource;
    DtTabela: TDataSource;
    QrTabela: TADOQuery;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QrAssociaIda: TADOQuery;
    DtAssociaIda: TDataSource;
    DBGrid2: TDBGrid;
    QrAssociaVolta: TADOQuery;
    DtAssociaVolta: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    DtTipoOperacao: TDataSource;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    GroupBox3: TGroupBox;
    EditVei: TEdit;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    QrMov: TADOQuery;
    SpeedButton4: TSpeedButton;
    Memo1: TMemo;
    QrSaidaGaragem: TADOQuery;
    DtSaidaGaragem: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DtVeiculos: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabelasVeiculos: TFormTabelasVeiculos;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormTabelasVeiculos.DBLookupComboBox1Click(Sender: TObject);
begin
         QrAssociaIda.Close;
         QrAssociaVolta.Close;

         with QrTabela do
              begin
                    Close;
//                    Parameters.ParamByName('linha').Value:=DBLookupComboBox1.KeyValue;
                    open;
              end;

end;

procedure TFormTabelasVeiculos.DBLookupComboBox1Enter(Sender: TObject);
begin
      DBLookupComboBox2.KeyValue:=null;
         with QrSaidaGaragem do
              begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    Parameters.ParamByName('Tipo').Value:=DBLookupComboBox3.KeyValue;
                    open;
              end;



end;

procedure TFormTabelasVeiculos.DBLookupComboBox2Enter(Sender: TObject);
begin
      DBLookupComboBox1.KeyValue:=null;
end;

procedure TFormTabelasVeiculos.DBLookupComboBox3Enter(Sender: TObject);
begin
      DBLookupComboBox1.KeyValue:=null;
      DBLookupComboBox2.KeyValue:=null;
end;

procedure TFormTabelasVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=cafree;
end;

procedure TFormTabelasVeiculos.FormShow(Sender: TObject);
begin
         with Pai.QrLinhas do
              begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    open;
              end;
         with QrTabela do
              begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=pai.Coligada;
                    open;
              end;
         DtTipoOperacao.DataSet.Open;

end;

procedure TFormTabelasVeiculos.SpeedButton1Click(Sender: TObject);
begin
           Screen.Cursor:=crHourGlass;
           with QrAssociaIda do
                begin
                      Close;
//                      Parameters.ParamByName('linha').Value:=DBLookupComboBox1.KeyValue;
                      if DBLookupComboBox2.KeyValue <> Null then
                                Parameters.ParamByName('tabela').Value:=DBLookupComboBox2.KeyValue;
                      if DBLookupComboBox1.KeyValue <> Null then
                                Parameters.ParamByName('tabela').Value:=DBLookupComboBox1.KeyValue;
                      Parameters.ParamByName('Tipo').Value:=DBLookupComboBox3.KeyValue;
                      Parameters.ParamByName('coligada').Value:=pai.Coligada;
                      open;
                      memo1.Text:=sql.Text;

                end;
           with QrAssociaVolta do
                begin
                      Close;
//                      Parameters.ParamByName('linha').Value:=DBLookupComboBox1.KeyValue;
                      if DBLookupComboBox2.KeyValue <> Null then
                                Parameters.ParamByName('tabela').Value:=DBLookupComboBox2.KeyValue;
                      if DBLookupComboBox1.KeyValue <> Null then
                                Parameters.ParamByName('tabela').Value:=DBLookupComboBox1.KeyValue;
                      Parameters.ParamByName('Tipo').Value:=DBLookupComboBox3.KeyValue;
                      Parameters.ParamByName('coligada').Value:=pai.Coligada;
                      open;
                      memo1.Text:=sql.Text;
                end;


           Screen.Cursor:=CrDefault;

end;

procedure TFormTabelasVeiculos.SpeedButton2Click(Sender: TObject);
begin
       if (QrAssociaIda.Active = False) and (QrAssociaVolta.Active = False)then
             begin
                  ShowMessage('Selecione Alguma tabela!');
                  Abort;
             end;

       GroupBox3.Enabled:=true;
       EditVei.SetFocus;
end;

procedure TFormTabelasVeiculos.SpeedButton3Click(Sender: TObject);
begin
          Screen.Cursor:=CrHourGlass;
          with QrMov do
               begin
                    Close;
                    Sql.Add('Update Tb_EscHorarios set Hor_Veiculo = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('vei_nun').AsString));
                    if DBLookupComboBox1.KeyValue <> null then
                            Sql.Add('Where Hor_Tabela = ' + QuotedStr(DBLookupComboBox1.KeyValue))
                            else
                            Sql.Add('Where Hor_Tabela = ' + QuotedStr(DBLookupComboBox2.KeyValue)) ;

                    Sql.Add('And Hor_Tipo = ' + QuotedStr(DBLookupComboBox3.KeyValue));
//                    Sql.Add('And Hor_Linha = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                    memo1.Text:=sql.Text;
                    ExecSql;
                    Close;
               end;
          QrAssociaIda.Close;
          QrAssociaVolta.Close;
          SpeedButton3.Enabled:=false;
          Screen.Cursor:=CrDefault;

end;

procedure TFormTabelasVeiculos.SpeedButton4Click(Sender: TObject);
begin
           with pai.QrVeiculos do
                 begin
                      close;
                      Parameters.ParamByName('coligada').Value:=pai.Coligada;
                      Parameters.ParamByName('veiculo').Value:=EditVei.Text;
                      open;
                      if eof then
                           begin
                                 MessageBox(0, 'O ve�culo informado n�o existe, n�o est� habilidato ou n�o pertence a esta coligada!', 'Ve�culo N�o encontrado', MB_ICONERROR or MB_OK);
                                 SpeedButton3.Enabled:=false;
                           end
                           else
                                 SpeedButton3.Enabled:=True;

                 end;

end;

end.
