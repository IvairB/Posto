unit unPrincipal;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.Menus, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Buttons, Winapi.Messages,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin,
  Vcl.ImgList, System.ImageList, System.Actions, Vcl.Mask;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    imnCadastro: TMenuItem;
    imnCadUsuario: TMenuItem;
    imnCadBomba: TMenuItem;
    imnAjuda: TMenuItem;
    imnSobre: TMenuItem;
    OpenDialog: TOpenDialog;
    imnCadCombustivel: TMenuItem;
    imnRelatorios: TMenuItem;
    imnGeral: TMenuItem;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    actRelatorioGeral: TEditCut;
    actUsuario: TAction;
    actBomba: TAction;
    actCombustivel: TAction;
    actSobrePosto: TAction;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ImageList1: TImageList;
    pnAcesso: TPanel;
    edUsuario: TMaskEdit;
    lblUsuario: TLabel;
    lbSenha: TLabel;
    btEntrar: TBitBtn;
    imnSair: TMenuItem;
    edSenha: TEdit;
    Outro1: TMenuItem;
    actTanque: TAction;
    actAbastecimento: TAction;
    Abastecimento1: TMenuItem;
    procedure actUsuarioExecute(Sender: TObject);
    procedure actCombustivelExecute(Sender: TObject);
    procedure btEntrarClick(Sender: TObject);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure imnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actTanqueExecute(Sender: TObject);
    procedure actBombaExecute(Sender: TObject);
    procedure actSobrePostoExecute(Sender: TObject);
    procedure actRelatorioGeralExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actAbastecimentoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure MenuVisivel(pVisivel : Boolean);
    procedure CriaFormCadastro(pAba : String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses CHILDWIN, About, unCadastros, unDM, unRelatorioGeral;

procedure TfrmPrincipal.btEntrarClick(Sender: TObject);
var
  vRetorno : String;
begin
  vRetorno := dm.Acesso(edUsuario.Text, edSenha.Text);
  if vRetorno = '' then
  begin
    pnAcesso.Visible := False;
    MenuVisivel(True);
  end
  else
  begin
    ShowMessage(vRetorno);
    edUsuario.SetFocus;
  end;
end;

procedure TfrmPrincipal.CriaFormCadastro(pAba : String);
begin
  if frmCadastros <> nil then
  begin
    frmCadastros.Close;
    frmCadastros.Free;
    frmCadastros := nil;
  end;

  frmCadastros := TfrmCadastros.Create(Self);
  frmCadastros.Show;
  if pAba = 'U' then
    frmCadastros.AtivaTab(frmCadastros.tsUsuarios)
  else if pAba = 'C' then
    frmCadastros.AtivaTab(frmCadastros.tsCombustiveis)
  else if pAba = 'A' then
    frmCadastros.AtivaTab(frmCadastros.tsAbastecimento)
  else if pAba = 'T' then
    frmCadastros.AtivaTab(frmCadastros.tsTanques)
  else if pAba = 'B' then
    frmCadastros.AtivaTab(frmCadastros.tsBombas);
end;

procedure TfrmPrincipal.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btEntrar.Click;
end;

procedure TfrmPrincipal.edUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edSenha.SetFocus;
end;

procedure TfrmPrincipal.actUsuarioExecute(Sender: TObject);
begin
  CriaFormCadastro('U');
end;

procedure TfrmPrincipal.actCombustivelExecute(Sender: TObject);
begin
  CriaFormCadastro('C');
end;

procedure TfrmPrincipal.actRelatorioGeralExecute(Sender: TObject);
begin
  frmRelatorioGeral := TfrmRelatorioGeral.Create(Self);
  frmRelatorioGeral.Show;
end;

procedure TfrmPrincipal.actTanqueExecute(Sender: TObject);
begin
  CriaFormCadastro('T');
end;

procedure TfrmPrincipal.actAbastecimentoExecute(Sender: TObject);
begin
  CriaFormCadastro('A');
end;

procedure TfrmPrincipal.actBombaExecute(Sender: TObject);
begin
  CriaFormCadastro('B');
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  if pnAcesso.Visible then
    edUsuario.SetFocus;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  MenuVisivel(False);
end;

procedure TfrmPrincipal.actSobrePostoExecute(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TfrmPrincipal.imnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.MenuVisivel(pVisivel: Boolean);
begin
  imnCadastro.Visible := pVisivel;
  imnRelatorios.Visible := pVisivel;
  imnAjuda.Visible := pVisivel;
  imnSair.Visible := pVisivel
end;

end.
