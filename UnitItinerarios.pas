unit UnitItinerarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask;

type
  TFormItinerarios = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DtSentido: TDataSource;
    QrSentidoViagem: TADOQuery;
    DtItinerarios: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DtLinha: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItinerarios: TFormItinerarios;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormItinerarios.BitBtn1Click(Sender: TObject);
begin
     DtItinerarios.DataSet.Cancel;
     DtItinerarios.DataSet.Insert;
     DBEdit1.SetFocus;

end;

procedure TFormItinerarios.BitBtn2Click(Sender: TObject);
begin
          if (MessageDlg('Deseja apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
               begin
                     DtItinerarios.DataSet.Delete;
               end;
end;

procedure TFormItinerarios.BitBtn3Click(Sender: TObject);
begin
          if (DtItinerarios.DataSet.State = DsInsert) or (DtItinerarios.DataSet.State = DsEdit) then
               begin
                    DtItinerarios.DataSet.FieldByName('Iti_Coligada').AsString:=Pai.Coligada;
                    DtItinerarios.DataSet.Post;
               end;
               BitBtn1.SetFocus;
end;

procedure TFormItinerarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QrSentidoViagem.close;
     DtItinerarios.DataSet.Close;
     DtLinha.DataSet.Close;
     Action:=cafree;
end;

procedure TFormItinerarios.FormCreate(Sender: TObject);
begin
        With Pai.QrLinhas do
             begin
                   close;
                   Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                   Open;
             end;
        With Pai.QrItinerarios do
             begin
                   close;
                   Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                   Open;
             end;
       QrSentidoViagem.Open;
//       DtItinerarios.DataSet.Open;

end;

procedure TFormItinerarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13  then
            begin
                 Key:=#0;
                 Perform(WM_NextDlgCtl,0,0);
            end;
end;

end.
