unit UtImportacaoBilhetagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormImportaEmpresa1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabEdicao: TTabSheet;
    BtSalvar: TButton;
    PnEdicao: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Gauge1: TGauge;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Q2: TFDQuery;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaEmpresa1: TFormImportaEmpresa1;
    TXT:TextFile;
    VDATAMOVIMENTO:TDATE;
implementation

{$R *.dfm}

uses UnPai;

procedure TFormImportaEmpresa1.BitBtn1Click(Sender: TObject);

var
entrada, saida: string;
Quebra: TStringList;

VCATINI, VCATFIM,VGIROS, VINTEGRAL, VCID, VESC,  VCRI,VTUR, VECR, VVE, VESL, VEMP, VIDO, VISC, VSOC,
vvei,VVT_ATU,VVT_ANT,VVS_ATU,VVS_ANT,VPE_ANT,VPE_ATU,VGRA,VESG,VSER:STRING;
VHORAVIAGEM,VDATAJOR, VHORAJOR,VES1, VHORAFJOR, VES2,VLINHA, VES3,VES4,VES5,VES6, VDOM:STRING;
begin
      screen.Cursor:=crHourGlass;
     WITH PAI.Q DO
           BEGIN
                CLOSE;
                SQL.CLEAR;
//                SQL.Add('delete TB_WORCSV');
//                EXECSQL;
           END;

     Reset(TXT);
     Quebra:=TStringList.create;
     gauge1.Progress:=0;
     gauge1.MaxValue:=2300;
     ReadLn(Txt,Entrada); // pula cabeçalho
     while not Eoln(TXT) do
            Begin
                 Quebra.Clear;
                 saida:=StringReplace(entrada,';','; ',[RfReplaceAll]);
                 VDATAMOVIMENTO:=DateTimePicker1.Date;
                 ExtractStrings([' '],[],pchar(saida),quebra);
                // showmessage(trim(QUEBRA.Strings[0]));
                 vvei:=trim(QUEBRA.Strings[0]);
                 VDATAJOR:=trim(QUEBRA.Strings[1]);
                 if strtoDate(VDATAJOR) <> DateTimePicker1.Date  then
                      BEGIN
                               SHOWMESSAGE('Data informada difere do arquivo');
                               close;
                               abort;

                      END;

                 VHORAJOR:=trim(QUEBRA.Strings[2]);
                 VHORAFJOR:=trim(QUEBRA.Strings[4]);
                 VHORAVIAGEM:=trim(QUEBRA.Strings[6]); // HORA INICIO DA VIAGEM
                 VCATINI:=trim(QUEBRA.Strings[9]);
                 VCATFIM:=trim(QUEBRA.Strings[10]);
                 VLINHA:=trim(QUEBRA.Strings[11]);
                 VGIROS:=trim(QUEBRA.Strings[12]);

                 VINTEGRAL:=trim(QUEBRA.Strings[13]);
                 VCID:=trim(QUEBRA.Strings[14]);
//                 VCIDANT:=trim(QUEBRA.Strings[15]);
                 VESC:=trim(QUEBRA.Strings[15]);
//                 VESCANT:=trim(QUEBRA.Strings[17]);
                 VVT_ATU:=trim(QUEBRA.Strings[16]);
//                 VVT_ANT:=trim(QUEBRA.Strings[19]);
                 VCRI:=trim(QUEBRA.Strings[17]);
                 VTUR:=trim(QUEBRA.Strings[18]);
              //   VTURANT:=trim(QUEBRA.Strings[22]);
                 VGRA:=trim(QUEBRA.Strings[19]);
                 VECR:=trim(QUEBRA.Strings[20]);

                 VESL:=trim(QUEBRA.Strings[21]);
                 VVE :=trim(QUEBRA.Strings[22]);
                 VESG:=trim(QUEBRA.Strings[23]);
                 VEMP:=trim(QUEBRA.Strings[24]);
//                 VEMPANT:=trim(QUEBRA.Strings[28]);

                 VIDO:=trim(QUEBRA.Strings[25]);
                 VISC:=trim(QUEBRA.Strings[26]);
                 VSOC:=trim(QUEBRA.Strings[27]);
                 VES1:=trim(QUEBRA.Strings[28]);
                 VES2:=trim(QUEBRA.Strings[29]);
                 VES3:=trim(QUEBRA.Strings[30]);
                 VES4:=trim(QUEBRA.Strings[31]);
                 VES5:=trim(QUEBRA.Strings[32]);
                 VES6:=trim(QUEBRA.Strings[33]);
                 VDOM:=trim(QUEBRA.Strings[40]);
                      WITH Q2 DO
                         BEGIN
                             CLOSE;
                             SQL.CLEAR;
                             Sql.Add('select * from tb_mon_empresa1 where tbi_vei=:vei and tbi_data=:data and TBI_HORAVIAGEM=:hora');
                             ParamByName('vei').AsString:=Vvei;
                             ParamByName('data').AsString:=DATETOSTR(VDATAMOVIMENTO);
                             ParamByName('hora').AsString:=VHORAVIAGEM;
                             MEMO1.LINES.ADD(VVEI + ' ' + VHORAVIAGEM);
                             Open;
                             if eof then
                                   begin
                                       Close;
                                       WITH PAI.Q DO
                                            BEGIN
                                                  CLOSE;
                                                  SQL.CLEAR;
                                                  SQL.Add('INSERT INTO TB_MON_EMPRESA1 (TBI_COL, TBI_DATA, TBI_VEI, TBI_LIN, TBI_CAT_INI, TBI_CAT_FIM,TBI_DATAJOR,TBI_HORAJOR,TBI_HORAFJOR, TBI_HORAVIAGEM, TBI_GIROS, tbi_pag, TBI_CID, TBI_ESC, ');
                                                  SQL.Add('TBI_VT_ATU,  TBI_CRI, TBI_TUR, TBI_GRA, TBI_ECR, TBI_ESL,');
                                                  SQL.Add('TBI_VE, TBI_ESG, TBI_EMP, TBI_IDO, TBI_ISC, TBI_SOC, TBI_ES1, TBI_ES2, TBI_ES3, TBI_ES4, TBI_ES5, TBI_ES6, TBI_DOM )');
                                                  SQL.Add('VALUES (' +
                                                  PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString     +','+
                                                  QUOTEDSTR(DATETOSTR(VDATAMOVIMENTO))                     +','+
                                                  QUOTEDSTR(VVEI)                                          +','+
                                                  QUOTEDSTR(VLINHA)                                        +','+
                                                  QUOTEDSTR(VCATINI)                                       +','+
                                                  QUOTEDSTR(VCATFIM)                                       +','+
                                                  QUOTEDSTR(VDATAJOR)                                      +','+
                                                  QUOTEDSTR(VHORAJOR)                                      +','+
                                                  QUOTEDSTR(VHORAFJOR)                                     +','+
                                                  QUOTEDSTR(VHORAVIAGEM)                                   +','+
                                                  QUOTEDSTR(VGIROS)                                        +','+
                                                  QUOTEDSTR(VINTEGRAL)                                     +','+
                                                  QUOTEDSTR(VCID)                                          +','+
                                                  QUOTEDSTR(VESC)                                          +','+
                                                  QUOTEDSTR(VVT_ATU)                                       +','+
                                                  QUOTEDSTR(VCRI)                                          +','+
                                                  QUOTEDSTR(VTUR)                                          +','+
                                                  QUOTEDSTR(VGRA)                                          +','+
                                                  QUOTEDSTR(VECR)                                          +','+
                                                  QUOTEDSTR(VESL)                                          +','+
                                                  QUOTEDSTR(VVE)                                           +','+
                                                  QUOTEDSTR(VESG)                                          +','+
                                                  QUOTEDSTR(VEMP)                                          +','+
                                                  QUOTEDSTR(VIDO)                                          +','+
                                                  QUOTEDSTR(VISC)                                          +','+
                                                  QUOTEDSTR(VSOC)                                          +','+
                                                  QUOTEDSTR(VES1)                                          +','+
                                                  QUOTEDSTR(VES2)                                          +','+
                                                  QUOTEDSTR(VES3)                                          +','+
                                                  QUOTEDSTR(VES4)                                          +','+
                                                  QUOTEDSTR(VES5)                                          +','+
                                                  QUOTEDSTR(VES6)                                          +','+
                                                  QUOTEDSTR(VDOM)                                          +')');
                                                  MEMO1.LINES.ADD(SQL.Text);
                                                  EXECSQL;
                                            END;
                                    end;
                         END;
                       ReadLn(Txt,Entrada);
                       gauge1.Progress:=Gauge1.Progress+1;
            End;
        ShowMessage(IntToStr(gauge1.Progress) + ' Processados !');
        Gauge1.Progress:=0;

end;

procedure TFormImportaEmpresa1.BtSalvarClick(Sender: TObject);

var
entrada, saida: string;
Quebra: TStringList;

VCATINI, VCATFIM,VGIROS, VINTEGRAL, VCID, VCIDANT, VESC, VESCANT, VCRI,VTUR, VECR, VVE_Ant, VESL, VEMP, VEMPANT,VIDO, VISC, VSOC,
vvei,VVT_ATU,VVT_ANT,VVS_ATU,VVS_ANT,VPE_ANT,VPE_ATU,VGRA,VESG,VSER:STRING;
VHORAVIAGEM,VDATAJOR, VHORAJOR,VES1, VHORAFJOR, VES2,VLINHA, VES3,VES4,VES5,VES6, VDOM:STRING;
begin
      screen.Cursor:=crHourGlass;
     WITH PAI.Q DO
           BEGIN
                CLOSE;
                SQL.CLEAR;
//                SQL.Add('delete TB_WORCSV');
//                EXECSQL;
           END;

     Reset(TXT);
     Quebra:=TStringList.create;
     gauge1.Progress:=0;
     gauge1.MaxValue:=2400;
     ReadLn(Txt,Entrada); // pula cabeçalho
     while not Eoln(TXT) do
            Begin
                 Quebra.Clear;
                 saida:=StringReplace(entrada,';','; ',[RfReplaceAll]);
                 VDATAMOVIMENTO:=DateTimePicker1.Date;
                 ExtractStrings([' '],[],pchar(saida),quebra);
                // showmessage(trim(QUEBRA.Strings[0]));
                 vvei:=trim(QUEBRA.Strings[0]);
                 VDATAJOR:=trim(QUEBRA.Strings[1]);
                 if strtoDate(VDATAJOR) <> DateTimePicker1.Date  then
                      BEGIN
                               SHOWMESSAGE('Data informada difere do arquivo');
                               close;
                               abort;

                      END;

                 VHORAJOR:=trim(QUEBRA.Strings[2]);
                 VHORAFJOR:=trim(QUEBRA.Strings[4]);
                 VHORAVIAGEM:=trim(QUEBRA.Strings[6]); // HORA INICIO DA VIAGEM
                 VCATINI:=trim(QUEBRA.Strings[9]);
                 VCATFIM:=trim(QUEBRA.Strings[10]);
                 VLINHA:=trim(QUEBRA.Strings[11]);
                 VGIROS:=trim(QUEBRA.Strings[12]);

                 VINTEGRAL:=trim(QUEBRA.Strings[13]);
                 VCID:=trim(QUEBRA.Strings[14]);
                 VCIDANT:=trim(QUEBRA.Strings[15]);
                 VESC:=trim(QUEBRA.Strings[16]);
                 VESCANT:=trim(QUEBRA.Strings[17]);
                 VVT_ATU:=trim(QUEBRA.Strings[18]);
                 VVT_ANT:=trim(QUEBRA.Strings[19]);
                 VCRI:=trim(QUEBRA.Strings[20]);
                 VTUR:=trim(QUEBRA.Strings[21]);
              //   VTURANT:=trim(QUEBRA.Strings[22]);
                 VGRA:=trim(QUEBRA.Strings[22]);
                 VECR:=trim(QUEBRA.Strings[23]);

                 VESL:=trim(QUEBRA.Strings[24]);
/// alterar na mudanca de tarifa
                 VVE_ant :=trim(QUEBRA.Strings[25]);
                 VESG:=trim(QUEBRA.Strings[26]);
                 VEMP:=trim(QUEBRA.Strings[27]);
                 VEMPANT:=trim(QUEBRA.Strings[28]);

                 VIDO:=trim(QUEBRA.Strings[29]);
                 VISC:=trim(QUEBRA.Strings[30]);
                 VSOC:=trim(QUEBRA.Strings[31]);
                 VES1:=trim(QUEBRA.Strings[32]);
                 VES2:=trim(QUEBRA.Strings[33]);
                 VES3:=trim(QUEBRA.Strings[34]);
                 VES4:=trim(QUEBRA.Strings[35]);
                 VES5:=trim(QUEBRA.Strings[36]);
                 VES6:=trim(QUEBRA.Strings[37]);
                 VDOM:=trim(QUEBRA.Strings[44]);
                      WITH Q2 DO
                         BEGIN
                             CLOSE;
                             SQL.CLEAR;
                             Sql.Add('select * from tb_mon_empresa1 where tbi_vei=:vei and tbi_data=:data and TBI_HORAVIAGEM=:hora');
                             ParamByName('vei').AsString:=Vvei;
                             ParamByName('data').AsString:=DATETOSTR(VDATAMOVIMENTO);
                             ParamByName('hora').AsString:=VHORAVIAGEM;
                             MEMO1.LINES.ADD(VVEI + ' ' + VHORAVIAGEM);
                             Open;
                             if eof then
                                   begin
                                       Close;
                                       WITH PAI.Q DO
                                            BEGIN
                                                  CLOSE;
                                                  SQL.CLEAR;
                                                  SQL.Add('INSERT INTO TB_MON_EMPRESA1 (TBI_COL, TBI_DATA, TBI_VEI, TBI_LIN, TBI_CAT_INI, TBI_CAT_FIM,TBI_DATAJOR,TBI_HORAJOR,TBI_HORAFJOR, TBI_HORAVIAGEM, TBI_GIROS, tbi_pag, TBI_CID, TBI_CID_ANT, TBI_ESC, TBI_ESC_ANT,');
                                                  SQL.Add('TBI_VT_ATU, TBI_VT_ANT, TBI_CRI, TBI_TUR, TBI_GRA, TBI_ECR, TBI_ESL,');
                                                  SQL.Add('TBI_VE_ANT, TBI_ESG, TBI_EMP, TBI_EMP_ANT, TBI_IDO, TBI_ISC, TBI_SOC, TBI_ES1, TBI_ES2, TBI_ES3, TBI_ES4, TBI_ES5, TBI_ES6, TBI_DOM )');
                                                  SQL.Add('VALUES (' +
                                                  PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString     +','+
                                                  QUOTEDSTR(DATETOSTR(VDATAMOVIMENTO))                     +','+
                                                  QUOTEDSTR(VVEI)                                          +','+
                                                  QUOTEDSTR(VLINHA)                                        +','+
                                                  QUOTEDSTR(VCATINI)                                       +','+
                                                  QUOTEDSTR(VCATFIM)                                       +','+
                                                  QUOTEDSTR(VDATAJOR)                                      +','+
                                                  QUOTEDSTR(VHORAJOR)                                      +','+
                                                  QUOTEDSTR(VHORAFJOR)                                     +','+
                                                  QUOTEDSTR(VHORAVIAGEM)                                   +','+
                                                  QUOTEDSTR(VGIROS)                                        +','+
                                                  QUOTEDSTR(VINTEGRAL)                                     +','+
                                                  QUOTEDSTR(VCID)                                          +','+
                                                  QUOTEDSTR(VCIDANT)                                       +','+
                                                  QUOTEDSTR(VESC)                                          +','+
                                                  QUOTEDSTR(VESCANT)                                       +','+
                                                  QUOTEDSTR(VVT_ATU)                                       +','+
                                                  QUOTEDSTR(VVT_ANT)                                       +','+
                                                  QUOTEDSTR(VCRI)                                          +','+
                                                  QUOTEDSTR(VTUR)                                          +','+
                                                  QUOTEDSTR(VGRA)                                          +','+
                                                  QUOTEDSTR(VECR)                                          +','+
                                                  QUOTEDSTR(VESL)                                          +','+
                                                  QUOTEDSTR(VVE_Ant)                                       +','+
                                                  QUOTEDSTR(VESG)                                          +','+
                                                  QUOTEDSTR(VEMP)                                          +','+
                                                  QUOTEDSTR(VEMPANT)                                       +','+
                                                  QUOTEDSTR(VIDO)                                          +','+
                                                  QUOTEDSTR(VISC)                                          +','+
                                                  QUOTEDSTR(VSOC)                                          +','+
                                                  QUOTEDSTR(VES1)                                          +','+
                                                  QUOTEDSTR(VES2)                                          +','+
                                                  QUOTEDSTR(VES3)                                          +','+
                                                  QUOTEDSTR(VES4)                                          +','+
                                                  QUOTEDSTR(VES5)                                          +','+
                                                  QUOTEDSTR(VES6)                                          +','+
                                                  QUOTEDSTR(VDOM)                                          +')');
                                                  MEMO1.LINES.ADD(SQL.Text);
                                                  EXECSQL;
                                            END;
                                    end;
                         END;
                       ReadLn(Txt,Entrada);
                       gauge1.Progress:=Gauge1.Progress+1;
            End;
        ShowMessage(IntToStr(gauge1.Progress) + ' Processados !');
        Gauge1.Progress:=0;
end;

procedure TFormImportaEmpresa1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//          AssignFile(CLOSE);
          Action:=cafree;
end;

procedure TFormImportaEmpresa1.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=now;
end;

procedure TFormImportaEmpresa1.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TFormImportaEmpresa1.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
     Begin
          Edit1.Text:=(OpenDialog1.FileName);
          AssignFile(Txt,OpenDialog1.FileName);

     End;


end;

end.
