unit UnitProBusca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormProBusca = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QrPro: TADOQuery;
    DtPro: TDataSource;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProBusca: TFormProBusca;

implementation

uses UnitPai, UnitLancamento;

{$R *.dfm}

procedure TFormProBusca.DBGrid1DblClick(Sender: TObject);
begin
if not QrPro.Eof then
        begin
                FormLancamento.EditChapa.Text:=DtPro.DataSet.FieldByName('Chapa').AsString;
                Close;
        end;

end;

procedure TFormProBusca.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
          SpeedButton1.Click;
    end;
end;

procedure TFormProBusca.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DOWN then
            begin
                  DBGrid1.SetFocus;
            end;
end;

procedure TFormProBusca.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        With QrPro Do
             begin
                      Close;
                       Sql.Clear;
                        Sql.Add('Select A.Cha_Pro As Chapa, A.Nom_Pro As Nome, B.Des_Funcao as Funcao');
                         Sql.Add('From Tb_Profissionais A, Tb_Funcao B');
                          Sql.Add('Where B.Cod_Funcao = A.Pro_FuncaoExercida');
                           sQL.Add('AND A.ATIVO_PRO = ' + QUOTEDSTR('A'));
                           Sql.Add('And B.REG_PONTO = ' + QuotedStr('S'));
                           Sql.Add('And Cod_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                            if ComboBox1.ItemIndex = 0 then Sql.Add('And A.Nom_pro like '+ QuotedStr('%'+Edit1.Text+'%'));
                             if ComboBox1.ItemIndex = 1 then Sql.Add('And A.Cha_pro like '+ QuotedStr('%'+Edit1.Text+'%'));
                              Open;
        end;

end;

procedure TFormProBusca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      DtPro.DataSet.Close;
      Action:=Cafree;
end;

procedure TFormProBusca.SpeedButton1Click(Sender: TObject);
begin
if not QrPro.Eof then
     begin
           FormLancamento.EditChapa.Text:=DtPro.DataSet.FieldByName('Chapa').AsString;
           Close;
     end;

end;

procedure TFormProBusca.SpeedButton2Click(Sender: TObject);
begin
           Close;
end;

end.
