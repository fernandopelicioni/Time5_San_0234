unit UnitEtiquetaCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFormEtiquetaCartao = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DtDepto: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Chapai: TEdit;
    ChapaF: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Edit3: TEdit;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtiquetaCartao: TFormEtiquetaCartao;

implementation

uses UnitPai, UnitRelatorio;

{$R *.dfm}

procedure TFormEtiquetaCartao.FormActivate(Sender: TObject);
begin
DtDepto.DataSet.Open;
end;

procedure TFormEtiquetaCartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtDepto.DataSet.Close;
action:=cafree;
end;

procedure TFormEtiquetaCartao.SpeedButton1Click(Sender: TObject);
begin
            With Relatorio.QrEtiquetaCartao do
                begin
                      Close;
                      Parameters.ParamByName('Coligada').Value:=Pai.QrColigadas.FieldByName('cod_Coligada').AsString;
                      Parameters.ParamByName('Depto').Value:=DBLookupComboBox1.KeyValue;
                      Parameters.ParamByName('CHI').Value:=QUOTEDSTR(Chapai.Text+'0%');
                      Parameters.ParamByName('CHF').Value:=QUOTEDSTR(ChapaF.Text+'Z%');

                      Open;
                      if Not eof then
                            begin
                                    Relatorio.Projeto.SetParam('Versao',Edit3.Text);
                                    Relatorio.Projeto.ExecuteReport('Rv_EtCt');

                            end;



                end;
end;

end.