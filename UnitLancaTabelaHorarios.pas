unit UnitLancaTabelaHorarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, Mask, Buttons, DBCtrls, ADODB, Grids, DBGrids;

type
  TFormEscalaTabelasHorarios = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DtLinha: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBText1: TDBText;
    DtHorarios: TDataSource;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DtTiposOperacao: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    QrHora: TADOQuery;
    BitBtn1: TBitBtn;
    DtHora: TDataSource;
    DtItinerarios: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QrItinerarios: TADOQuery;
    detalhes: TGroupBox;
    Label3: TLabel;
    EditHora: TMaskEdit;
    Label4: TLabel;
    EditIti: TDBLookupComboBox;
    Label5: TLabel;
    EditOso: TEdit;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit1: TEdit;
    EditVei: TEdit;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    Procedure LimpaEdit(Sender :Tobject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditVeiExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEscalaTabelasHorarios: TFormEscalaTabelasHorarios;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormEscalaTabelasHorarios.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormEscalaTabelasHorarios.DBLookupComboBox1Exit(Sender: TObject);
begin
       SpeedButton1.Click;
end;

procedure TFormEscalaTabelasHorarios.EditVeiExit(Sender: TObject);
begin
           with pai.QrVeiculos do
                 begin
                      close;
                      Parameters.ParamByName('coligada').Value:=pai.Coligada;
                      Parameters.ParamByName('veiculo').Value:=EditVei.Text;
                      open;
                      if eof then
                           MessageBox(0, 'O veículo informado não existe, não está habilidato ou não pertence a esta coligada!', 'Veículo Não encontrado', MB_ICONERROR or MB_OK);
                 end;
end;

procedure TFormEscalaTabelasHorarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormEscalaTabelasHorarios.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
       if key=#13 then
            begin
                 Key:=#0 ;
                 Perform(WM_NextDlgCtl,0,0);
            end;
end;

procedure TFormEscalaTabelasHorarios.FormShow(Sender: TObject);
begin
        DtTiposOperacao.DataSet.Open;
        With Pai.QrLinhas do
             begin
                   close;
                   Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                   Open;
             end;

end;

procedure TFormEscalaTabelasHorarios.SpeedButton1Click(Sender: TObject);
begin
         Screen.Cursor:=crHourGlass;
        With QrItinerarios do
             begin
                   close;
                   Parameters.ParamByName('coligada').Value:=Pai.Coligada;
                   Parameters.ParamByName('linha').Value:=DBLookupComboBox1.KeyValue;
                   Open;
             end;

         With QrHora do
               begin
                     Close;
                     Parameters.ParamByName('linha').Value:=DtLinha.DataSet.FieldByName('Lin_cod').AsString;
                     Open;
               end;



         Screen.Cursor:=crDefault;

end;

procedure TFormEscalaTabelasHorarios.SpeedButton2Click(Sender: TObject);
begin
         if (MessageDlg('Deseja Apagar o Horário de : ' + DtHora.DataSet.FieldByName('hora').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
                begin
                       DtHora.DataSet.Delete;

                end;
end;

procedure TFormEscalaTabelasHorarios.SpeedButton3Click(Sender: TObject);
begin
         with Pai.QrGpsHorarios do
               begin
                     Try
                         Open;
                         Insert;
                         FieldByName('HOR_HORA').AsString:=EditHora.Text;
                         FieldByName('HOR_LINHA').AsString:=DBLookupComboBox1.KeyValue;
                         FieldByName('HOR_OSO').AsString:=EDITOSO.Text;
                         FieldByName('HOR_ITI').AsString:=EditIti.KeyValue;
                         FieldByName('HOR_INF').AsString:=Edit1.Text;
                         FieldByName('HOR_TIPO').AsString:=DBLookupComboBox2.KeyValue;
                         FieldByName('HOR_TABELA').AsString:=Edit2.Text;
                         FieldByName('HOR_Coligada').AsString:=Pai.Coligada;
                         if CheckBox1.Checked = True then
                                FieldByName('HOR_INiJor').AsString:='1'
                                Else
                                FieldByName('HOR_INiJor').AsString:='0';
                         if CheckBox2.Checked = True then
                                FieldByName('HOR_NE').AsString:='1'
                                Else
                                FieldByName('HOR_NE').AsString:='0';

                         Post;
                         LimpaEdit(nil);
                         Refresh;
                         QrHora.Close;
                         QrHora.Open;

                     Except
                         MessageBox(0, 'É necessário o preenchimento de todos os campos!', 'Campos não preenchidos', MB_ICONWARNING or MB_OK);
                         EditHora.SetFocus;
                     End;
                     BitBtn3.SetFocus;

               end;
end;

procedure TFormEscalaTabelasHorarios.SpeedButton4Click(Sender: TObject);
begin
       detalhes.Enabled:=true;
       EditHora.SetFocus;
end;

Procedure TFormEscalatabelasHorarios.LimpaEdit(Sender :Tobject);
Begin
       EditHora.Text:='';
       EditIti.KeyValue:=null;
       Edit1.Text:='';
       Detalhes.Enabled:=False;

End;


end.
