unit UnitPeriodoCriar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, ADODB, Spin;

type
  TFormPeriodoCriar = class(TForm)
    DtPeriodo: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DtCompensacao: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label7: TLabel;
    MaskEdit5: TMaskEdit;
    Label8: TLabel;
    MaskEdit6: TMaskEdit;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    MaskEdit7: TMaskEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QrPeriodos: TADOQuery;
    QrDiaPeriodo: TADOQuery;
    Memo1: TMemo;
    EditFolgas: TSpinEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeriodoCriar: TFormPeriodoCriar;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormPeriodoCriar.BitBtn1Click(Sender: TObject);
var
    Inicio,Fim:TDate;
    Periodo:integer;
begin
        if (MessageDlg('Confirma cria��o do per�odo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              begin
                   If DBEdit1.Text <> '' then
                         begin
                              Inicio  :=StrtoDate(MaskEdit1.Text);
                              Fim     :=StrtoDate(MaskEdit2.Text);
                              DtPeriodo.DataSet.FieldByName('Tpe_Coligada').AsString:=Pai.QrColigadas.FieldByName('Cod_coligada').AsString;
//                            DtPeriodo.DataSet.FieldByName('Tpe_Ativo').AsString:=MaskEdit1.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_Inicio').AsString:=MaskEdit1.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_Fim').AsString:=MaskEdit2.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_2Sem').AsString:=MaskEdit3.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_3Sem').AsString:=MaskEdit4.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_4Sem').AsString:=MaskEdit5.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_5Sem').AsString:=MaskEdit6.Text;
                              DtPeriodo.DataSet.FieldByName('Tpe_folgas').AsString:=EditFolgas.Text;
                              if MaskEdit7.Text = '' then
                              DtPeriodo.DataSet.FieldByName('Tpe_1Qui').AsString:=MaskEdit7.Text;
                              DtPeriodo.DataSet.Post;
                              Periodo:=DtPeriodo.DataSet.FieldByName('Tpe_Cod').AsInteger;
                              // Iniciar a grava��o da tabela Dia_Periodo, onde todos os dias irao ser gravados

                              while Fim >= Inicio do
                                     begin
                                          With QrDiaPeriodo do
                                                begin
                                                      Close;
                                                      Sql.Clear;
                                                      Sql.Add('insert into tb_PtoDiaPeriodo (tdp_Periodo, Tdp_Data, Tdp_Coligada) values ('+ QuotedStr(IntToStr(Periodo)) + ','+ QuotedStr(DateToStr(Inicio))+','+QuotedStr(pai.QrColigadas.FieldByName('cod_coligada').AsString)+ ')');
                                                      ExecSQL;
                                                      Memo1.text:=sql.Text;
                                                end;
                                          Inicio:=Inicio+1;
                                    end;


                              Close;
                         end;
              end;
end;

procedure TFormPeriodoCriar.BitBtn2Click(Sender: TObject);
begin
        DtPeriodo.DataSet.Cancel;
        Close;
end;

procedure TFormPeriodoCriar.FormActivate(Sender: TObject);
begin
        DtCompensacao.DataSet.Open;
        DtPeriodo.DataSet.Open;
        DtPeriodo.DataSet.Insert;
end;

procedure TFormPeriodoCriar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.