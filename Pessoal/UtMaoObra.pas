unit UtMaoObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, ImgList, DBCtrls, Mask, StdCtrls, Grids,
  DBGrids, ComCtrls;

type
  TFormMaoObra = class(TForm)
    QrPro: TADOQuery;
    BcoImagens: TImageList;
    DtPro: TDataSource;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    EditBusca: TEdit;
    Button1: TButton;
    tabLista: TTabSheet;
    BtAlterar: TButton;
    DBGrid1: TDBGrid;
    TabPonto: TTabSheet;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBRadioGroup2: TDBRadioGroup;
    QrFuncaoExercida: TADOQuery;
    DtFuncaoExercida: TDataSource;
    BtSalvar: TButton;
    BtCancelar: TButton;
    QrProFolha: TADOQuery;
    DtProFolha: TDataSource;
    QrNewPro: TADOQuery;
    DtnewPro: TDataSource;
    TabSheet2: TTabSheet;
    Button5: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure tabListaShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    chapaI,nomeI:String;
  end;

var
  FormMaoObra: TFormMaoObra;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormMaoObra.BtCancelarClick(Sender: TObject);
begin
   DtPro.DataSet.Cancel;
     tabLista.Show;

end;

procedure TFormMaoObra.BtSalvarClick(Sender: TObject);
begin
//     DtPro.DataSet.Last;
     DtPro.DataSet.First;
//     DtPro.DataSet.Refresh;
     tabLista.Show;

end;

procedure TFormMaoObra.Button1Click(Sender: TObject);
begin
      if EditBusca.Text <>'' then
          begin
                ChapaI:='%'+EditBusca.Text+'%';
                NomeI:='%'+EditBusca.Text+'%';
          end
          else
          begin
                ChapaI:='%';
                NomeI:='%';
          end;
      With QrPro do
           begin
                 close;
                 Parameters.ParamByName('Chi').value:=chapaI;
                 Parameters.ParamByName('Ni').value:=NomeI;
                 Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                 Open;
           end;

//      if ComboBox1.ItemIndex = 0 then With QrPro do Locate('Nome',EditBusca.Text, [loCaseInsensitive, loPartialKey] );
//      if ComboBox1.ItemIndex = 1 then With QrPro do Locate('Chapa4Dg', EditBusca.Text,[loCaseInsensitive, loPartialKey]);
      PageControl1.ActivePageIndex:=1;

end;

procedure TFormMaoObra.Button5Click(Sender: TObject);
begin
Screen.Cursor:=crHourGlass;
       with QrProFolha do
            begin
                   close;

                   Open;
                   First;
                   while not eof do
                       begin
                              QrNewPro.close;
                              QrNewPro.Parameters.ParamByName('chapa').value:=QrProFolha.FieldByName('chapa').AsString;
                              QrNewPro.Open;
                              if not QrNewPro.eof then
                                  begin
                                         QrNewPro.Edit;
                                         QrNewPro.FieldByName('ativo_pro').Value:=QrProFolha.FieldByName('codsituacao').AsString;
                                         QrNewPro.next;
                                  end;
                       next;
                       end;
            end;
            Screen.Cursor:=crDefault;
            ShowMessage('Concluido com sucesso!');
            tabLista.Show;
end;

procedure TFormMaoObra.DBGrid1DblClick(Sender: TObject);
begin
       TabPonto.Show;
end;

procedure TFormMaoObra.FormCreate(Sender: TObject);
begin
                ChapaI:='%';

end;

procedure TFormMaoObra.FormShow(Sender: TObject);
begin
      With QrPro do
           begin
                 close;
                 Parameters.ParamByName('Chi').value:='%';
                 Parameters.ParamByName('Ni').value:='%';
                 Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                 Open;
                 fIRST;
           end;
      DtFuncaoExercida.DataSet.Open;
end;

procedure TFormMaoObra.tabListaShow(Sender: TObject);
begin
      With QrPro do
           begin
                 close;
                 Parameters.ParamByName('Chi').value:=chapaI;
                 Parameters.ParamByName('Ni').value:=NomeI;
                 Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                 Open;
                 fIRST;
           end;
end;

end.
