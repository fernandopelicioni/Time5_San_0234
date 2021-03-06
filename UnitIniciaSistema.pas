unit UnitIniciaSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, ExtCtrls, StdCtrls, Buttons, jpeg, XPMan, ActnMan,
  ActnColorMaps, pngimage;

type
  TFormIniciaSistema = class(TForm)
    Panel1: TPanel;
    EditColigada: TDBLookupComboBox;
    DtColigada: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DtUsuarios: TDataSource;
    Label17: TLabel;
    Label18: TLabel;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    editversao: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditGenoma: TEdit;
    EditCorpore: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure EditColigadaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  Coligada:string;
    { Public declarations }
  end;

var
  FormIniciaSistema: TFormIniciaSistema;

implementation

uses UnitPai, UnitEntrada;

{$R *.dfm}

procedure TFormIniciaSistema.BitBtn1Click(Sender: TObject);
begin
//Devo colocar restri��o de senhas aqui
Screen.Cursor:=Crhourglass;
if EditColigada.Text = '' then
    begin
    MessageBox(Handle,'Voc� precisa selecionar uma coligada !!!                                    '+#13+#13+#13+#13+#13+#13+#13+'Tente novamente !','Aten��o !!!', MB_OK + MB_OK);
    Edit1.SetFocus;
    end
    Else
    begin
    with Pai.QrUsuarios do
        begin
            Close;
            Sql.Clear;
            Sql.Add('Select * From Tb_Usuarios where USu_Login = ' + QuotedStr(Edit1.Text) + ' and Usu_Senha = ' + QuotedStr(Edit2.Text));
            Open;
            if not eof then
                begin
                if Pai.Qrusuarios.FieldByName('usu_senha').Text = Edit2.text then
                      begin
                          if (Pai.QrUsuarios.FieldByName('usu_Perfil').Text = DtColigada.DataSet.FieldByName('Perfil').text) or (DtUsuarios.DataSet.FieldByName('usu_Perfil').Text = 'T')  then
                             Begin
                                   Hide;
                                   Application.CreateForm(TFormEntrada,FormEntrada);
                                   FormEntrada.nivel:=StrToInt(Pai.QrUsuarios.FieldByName('usu_Nivel').AsString);
//                                 FormEntrada.DadosColigada.Click;
                                   Coligada:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                                   pai.Coligada:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                                   FormEntrada.Show;
                             End
                             ELSE
                             BEGIN
                                   MessageBox(Handle,'Voc� n�o esta autorizado para Logar nesta Coligada, Selecione Outra !','Acesso Negado',Mb_IconInformation+Mb_Ok);
                                   EditColigada.KeyValue:=null;
                                   Edit1.SetFocus;
                        END;
                           end
                           Else
                           begin
                                  ShowMessage('Login ou Senha Falhou, tente de Novo !!!');
                                  Edit1.Text:='';
                                  Edit2.Text:='';
                                  Edit1.SetFocus;
                           end;
                         end;
              end;
        end;
Screen.Cursor:=CrDefault;
end;

procedure TFormIniciaSistema.BitBtn2Click(Sender: TObject);
begin
    Application.Terminate;
    Close;
end;

procedure TFormIniciaSistema.Edit1Enter(Sender: TObject);
begin
    DtColigada.DataSet.Open;

end;

procedure TFormIniciaSistema.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  Begin
    key:=#0;
    Edit2.SetFocus;
  End;
end;

procedure TFormIniciaSistema.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
        Begin
             key:=#0;
             EditColigada.SetFocus;
        End;
end;

procedure TFormIniciaSistema.EditColigadaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   if editcoligada.KeyValue = Null then
        ShowMessage('Coligada n�o selecionada !')
        else
        BitBtn1Click(nil);
   end;
end;

procedure TFormIniciaSistema.FormActivate(Sender: TObject);
begin

      Label5.Caption:='Time - 2018 - ' + editversao.Caption;
      DtColigada.DataSet.Open;
      Pai.QrParams.Open;

      EditColigada.KeyValue:=null;
      Coligada:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
end;

procedure TFormIniciaSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      DtColigada.DataSet.Close;
      DtUsuarios.DataSet.Close;
      Application.Terminate;
end;

procedure TFormIniciaSistema.FormShow(Sender: TObject);
begin
Pai.Genoma.Close;
//Pai.Genoma.ConnectionString:=Memo1.Text;
Pai.Genoma.Open;
end;

end.
