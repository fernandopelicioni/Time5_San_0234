unit TelaStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Mask, CJVEditDate, ActnMan,
  ActnColorMaps, XPMan, DB, DBTables;

type
  TFormStatus = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    datai: TCJVEditDate;
    Dataf: TCJVEditDate;
    Label1: TLabel;
    Label2: TLabel;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    EditMatricula: TMaskEdit;
    DBText1: TDBText;
    s: TLabel;
    XPManifest1: TXPManifest;
    StandardColorMap1: TStandardColorMap;
    DbComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    DataSource1: TDataSource;
    qrdiario: TTable;
    qrdiarioMatricula: TStringField;
    qrdiarioSequencial: TAutoIncField;
    qrdiarioDIA_MES_ANO: TDateField;
    qrdiarioVEICULO_1: TStringField;
    qrdiarioENTRADA_1: TStringField;
    qrdiarioENTRADA_2: TStringField;
    qrdiarioENTRADA_3: TStringField;
    qrdiarioENTRADA_4: TStringField;
    qrdiarioSAIDA_1: TStringField;
    qrdiarioSAIDA_2: TStringField;
    qrdiarioSAIDA_3: TStringField;
    qrdiarioSAIDA_4: TStringField;
    qrdiarioVEICULO_2: TStringField;
    qrdiarioVEICULO_3: TStringField;
    qrdiarioVEICULO_4: TStringField;
    qrdiarioTOTAL_1: TStringField;
    qrdiarioTOTAL_2: TStringField;
    qrdiarioTOTAL_3: TStringField;
    qrdiarioTOTAL_4: TStringField;
    qrdiarioTOTAL_GERAL: TStringField;
    qrdiarioTIPO_DIA: TStringField;
    qrdiarioINTERVALO: TStringField;
    procedure EditMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure dataiKeyPress(Sender: TObject; var Key: Char);
    procedure DatafKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStatus: TFormStatus;
     tipodia: string[1];
implementation

uses TelaModule;

{$R *.dfm}

procedure TFormStatus.EditMatriculaKeyPress(Sender: TObject; var Key: Char);
var
situacao : string[1];
begin
if key = #13 then
             begin
             key:=#0;
             situacao:='O';
             IF Editmatricula.Text = ' ' then begin
                  situacao:='N'  ;
                  end;
              with module.qRfUNCIONARIO do
                  begin
                  close;
                  filter:='matricula = ' + s.caption + editmatricula.text + s.caption;
                  filtered:=true;
                  Open;
                  End;
              if DBText1.Caption = ' ' then
                  begin
                  situacao:='N';
                  End;
              if situacao = 'N' then
                  begin
                  ShowMessage('É preciso digitar um funcionario valido');
                  EditMatricula.Setfocus;
                  end;
              if situacao = 'O' then
                  begin
                 // Module.Tbdiario.Open;
                 // Module.Tbdiario.Append;
                  //mODULE.TbdiarioTIPO_DIA.TEXT:='F - Folga';
                  DBComboBox1.SetFocus;
                  end;
          End;

End;

procedure TFormStatus.btsalvaClick(Sender: TObject);
var
Diai,diaf:Tdate;
begin
Diai:=StrToDate(datai.text);
DiaF:=StrToDate(dataf.text);
While diai <= diaf do
      begin
      with qrdiario do
           begin
           filter:='matricula = ' + s.caption + EditMatricula.text + s.Caption +
                   ' and Dia_mes_ano = ' + s.caption + DateToStr(DiaI) + s.caption;
           Filtered:=true;
           Open;
           if not eof then
               repeat
               delete;
               next;
               Until Eof;
               end;
      qrdiario.Open;
      Qrdiario.Append;
      QrdiarioDIA_MES_ANO.Text:=DateToStr(Diai);
      QrdiarioMatricula.Text:=EditMatricula.Text;
      QrdiarioTIPO_DIA.Text:=TipoDia;
      Qrdiario.post;
      diai:=DiaI + 1;
      End;
 Module.qRfUNCIONARIO.close;
 btsalva.enabled:=false;
 if checkBox1.State = cbChecked then
      EditMatricula.setfocus;
 if checkBox1.State = cbUnChecked then
      DataI.setfocus;

end;

procedure TFormStatus.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    tipodia:=DbComboBox1.Text;
    Btsalva.Enabled:=true;
    btsalva.SetFocus;
    end;


end;

procedure TFormStatus.dataiKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
      begin
      key:=#0;
      Dataf.text:=Datai.text;
      Dataf.SetFocus;
      End;
end;

procedure TFormStatus.DatafKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then  EditMatricula.SetFocus;
end;

procedure TFormStatus.BitBtn2Click(Sender: TObject);
begin
EditMatricula.text:=' ';
EditMatricula.SetFocus;
end;

procedure TFormStatus.FormActivate(Sender: TObject);
begin
DbComboBox1.Text:='F - Folga';

end;

procedure TFormStatus.CheckBox1Click(Sender: TObject);
begin
datai.setfocus;
end;

procedure TFormStatus.FormShow(Sender: TObject);
begin
datai.Text:=datetostr(now);
      Dataf.text:=Datai.text;

end;

procedure TFormStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//action:=cafree;
end;

end.
