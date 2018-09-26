unit UtImportaCargasTacom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Gauges, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ImgList, Controls, Dialogs,
  StdCtrls, Gauges, Buttons, ComCtrls, pngimage, ExtCtrls, Classes;

type
  TFormImportaCargasTAcon = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabEdicao: TTabSheet;
    PnEdicao: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Gauge1: TGauge;
    Edit1: TEdit;
    Button1: TButton;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    Q: TFDQuery;
    Q2: TFDQuery;
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaCargasTAcon: TFormImportaCargasTAcon;
    TXT:TextFile;

implementation

{$R *.dfm}

uses UnPai;

procedure TFormImportaCargasTAcon.Button1Click(Sender: TObject);
var
VData, VHora, veiculo, IDCCIT, entrada, saida: string;
Quebra: TStringList;
 Vseg:word;
begin
      screen.Cursor:=crHourGlass;

     Reset(TXT);
     Quebra:=TStringList.create;
     gauge1.Progress:=0;
     gauge1.MaxValue:=FileSize(TXT);
     ReadLn(Txt,Entrada); // pula cabe�alho
     ReadLn(Txt,Entrada); // pula cabe�alho
     if not Eoln(TXT) then
            Begin
                    repeat
                         Quebra.Clear;
                         vseg:=vseg+1;
                         if vseg>59  then vseg:=1;
                         ExtractStrings([';'],[],pchar(entrada),quebra);
                         VData:=(QUEBRA.Strings[2]);
                         VHora:= (QUEBRA.Strings[2]);/// --- +':'+FormatFloat('00',Vseg);
                         memo1.Text:=VHora;
                         IDCCIT:=(QUEBRA.Strings[7]);
                         Veiculo:=(QUEBRA.Strings[10]);
                         With Q2 do
                             begin
                                  close;
                                  sql.Clear;
                                  Sql.Add('select * from tb_MonRecargas where tre_data=:data and tre_hora=:hora and tre_col=:coligada and tre_vei=:vei');
                                  ParamByName('Data').AsString:=Vdata;
                                  ParamByName('Hora').AsString:=VHora;
                                  ParamByName('Coligada').AsString:=PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString;
                                  ParamByName('vei').AsString:=Veiculo;
                                  open;
                                  if eof then
                                           BEGIN
                                                     WITH Q DO
                                                          BEGIN
                                                              CLOSE;
                                                              SQL.CLEAR;
                                                              SQL.Add('INSERT INTO TB_MONRecargas (TRE_DATA, TRE_HORA, TRE_COL, TRE_VEI, TRE_IDCCIT)');
                                                              SQL.Add('VALUES (' +
                                                                  QUOTEDSTR(VData)                                         +','+
                                                                  QUOTEDSTR(VHora)                                         +','+
                                                                  PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString        +','+
                                                                  QUOTEDSTR(veiculo)                                          +','+
                                                                  QUOTEDSTR(IDCCIT)                                           +')');
                                                                //  memo1.Text:=sql.Text;
                                                                  EXECSQL;
                                                          END;
                                           END;
                             end;
                               ReadLn(Txt,Entrada);
                               gauge1.Progress:=Gauge1.Progress+1;
                    until Eoln(TXT) ;
            End;
            Screen.Cursor:=crDefault;
            MessageBox(Handle,'Terminei, Importei todos as Cargas, j� pode cruzar os dados!','Conclu�do',Mb_IconInformation+Mb_Ok);
//            Close;


end;

procedure TFormImportaCargasTAcon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         Action:=cafree;
end;

procedure TFormImportaCargasTAcon.Image1Click(Sender: TObject);
begin
            Close;
end;

procedure TFormImportaCargasTAcon.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
     Begin
          Edit1.Text:=(OpenDialog1.FileName);
          AssignFile(Txt,OpenDialog1.FileName);

     End;

end;

end.
