unit UnitTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Keyboard, StdCtrls,ADODB, DB, Mask, pngimage;

type
  TFormTerminal = class(TForm)
    Timer1: TTimer;
    LabelHora: TLabel;
    DtColigada: TDataSource;
    QrTemp: TADOQuery;
    LabelColigada: TLabel;
    QrPro: TADOQuery;
    Panel1: TPanel;
    TouchKeyboard1: TTouchKeyboard;
    MaskEdit1: TMaskEdit;
    LabelData: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Image5: TImage;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTerminal: TFormTerminal;

implementation

uses UnitPai, UnitTerminalDetalhes;

{$R *.dfm}

procedure TFormTerminal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
         begin
              Key:=#0;
              // Some teclado
              //Mostra Cartao

         end;
end;

procedure TFormTerminal.FormCreate(Sender: TObject);
begin
{             With FormRelogio do
                  Begin
                      top :=0;
                      Left :=0;
                      Width := Screen.Width;
                      Height := Screen.Height;

                  End;
                DtColigada.DataSet.Open;
                LabelColigada.Caption:=DtColigada.DataSet.FieldByName('Des_Coligada').AsString;
//              PainelRelogio.left:=Trunc((FormRelogio.width - PainelRelogio.Width) / 2);
//              PainelRelogio.top:=Trunc((FormRelogio.Height - PainelRelogio.Height) / 2);    }

end;

procedure TFormTerminal.FormShow(Sender: TObject);
begin
             With FormTerminal do
                  Begin
                      top :=0;
                      Left :=0;
                      Width := Screen.Width;
                      Height := Screen.Height;

                  End;
                DtColigada.DataSet.Open;
                LabelColigada.Caption:=DtColigada.DataSet.FieldByName('Des_Coligada').AsString ;
              Panel1.left:=Trunc((FormTerminal.width - Panel1.Width) / 2);
              Panel1.top:=Trunc((FormTerminal.Height - Panel1.Height) / 2);

                Timer1Timer(nil);
end;

procedure TFormTerminal.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
           begin
                Key:=#0;
                With QrPro do
                     begin
                             close;
                             Parameters.ParamByName('coligada').value:=DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                             Parameters.ParamByName('chapa').Value:=MaskEdit1.Text;
                             Open;
                             if not eof then
                                 begin
                                        FormTerminalDetalhes.VChapaAtual:=QrPro.FieldByName('cod_pro').AsInteger;
                                        FormTerminalDetalhes.EditColab.Caption:='Seja Bem Vindo(a) : '+(QrPro.FieldByName('Nome').AsString);
                                        FormTerminalDetalhes.Show
                                 end
                                 else
                                 ShowMessage('Registro n�o encontrado!');

                     end;
           MaskEdit1.Text:='';

           end;
end;

procedure TFormTerminal.Timer1Timer(Sender: TObject);
var Q,q2: tadoquery;

begin
       QrTemp.Close;
       QrTemp.Open;
       LabelHora.Caption:=QrTemp.FieldByName('hora').Text;
       LabelData.Caption:=QrTemp.FieldByName('DiaSemana').Text +', ' + QrTemp.FieldByName('Dia').Text+' de ' + QrTemp.FieldByName('Mes').Text+' de '+ QrTemp.FieldByName('ano').Text;
       FormTerminalDetalhes.LabelHora.Caption:=QrTemp.FieldByName('hora').Text;
       FormTerminalDetalhes.LabelData.Caption:=QrTemp.FieldByName('DiaSemana').Text +', ' + QrTemp.FieldByName('Dia').Text+' de ' + QrTemp.FieldByName('Mes').Text+' de '+ QrTemp.FieldByName('ano').Text;
//labelHora.Caption:=
end;





end.