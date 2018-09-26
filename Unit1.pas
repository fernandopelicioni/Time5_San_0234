unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    DtCadastroFuncoes: TDataSource;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DtPerfilFuncao: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitPai;

{$R *.dfm}

end.
