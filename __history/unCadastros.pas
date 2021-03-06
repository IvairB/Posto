unit unCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastros = class(TForm)
    pgCadastros: TPageControl;
    tsUsuarios: TTabSheet;
    nvUsuarios: TDBNavigator;
    tsTanques: TTabSheet;
    edIDUsuarios: TDBEdit;
    edNomeUsuarios: TDBEdit;
    edUsuario: TDBEdit;
    edSenha: TDBEdit;
    cbAtivo: TDBCheckBox;
    lblIDUsuarios: TLabel;
    lblNomeUsuarios: TLabel;
    lblSenha: TLabel;
    suario: TLabel;
    tsCombustiveis: TTabSheet;
    tsBombas: TTabSheet;
    lblIDCombustiveis: TLabel;
    edIDCombustiveis: TDBEdit;
    lblTipoCombustiveis: TLabel;
    edTipoCombustiveis: TDBEdit;
    grdCombustiveis: TDBGrid;
    grdUsuarios: TDBGrid;
    lblPercImposto: TLabel;
    lblValorCompra: TLabel;
    lblValorVenda: TLabel;
    edPerc_Imposto: TDBEdit;
    edValorCompra: TDBEdit;
    edValorVenda: TDBEdit;
    lblIdTanques: TLabel;
    lblNumero: TLabel;
    nvTanques: TDBNavigator;
    edIdTanques: TDBEdit;
    edNumeroTanques: TDBEdit;
    grdTanques: TDBGrid;
    lblCapacidade: TLabel;
    lblCombustivel: TLabel;
    edCapacidade: TDBEdit;
    cbCombustivel: TDBLookupComboBox;
    lblIdBombas: TLabel;
    lblNumeroBombas: TLabel;
    lblTanqueBombas: TLabel;
    nvBombas: TDBNavigator;
    edIdBombas: TDBEdit;
    edNumeroBombas: TDBEdit;
    grdBombas: TDBGrid;
    cbTanque: TDBLookupComboBox;
    nvCombustiveis: TDBNavigator;
    tsAbastecimento: TTabSheet;
    nvAbastecimento: TDBNavigator;
    lblIdAbastecimento: TLabel;
    edIdAbastecimento: TDBEdit;
    DBGrid1: TDBGrid;
    lblBomba: TLabel;
    cbBomba: TDBLookupComboBox;
    lblQuantidade: TLabel;
    edLitros: TDBEdit;
    lblValor: TLabel;
    edValor: TDBEdit;
    Label3: TLabel;
    edValorVendaAbastecimento: TDBEdit;
    lblValorImporto: TLabel;
    edValorImposto: TDBEdit;
    lblValorTotal: TLabel;
    edValorTotal: TDBEdit;
    edData: TDBText;
    edHora: TDBText;
    edUsuarioAbastecimento: TDBText;
    edPercImposto: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsUsuariosShow(Sender: TObject);
    procedure tsCombustiveisShow(Sender: TObject);
    procedure tsTanquesShow(Sender: TObject);
    procedure tsBombasShow(Sender: TObject);
    procedure edNomeUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure tsAbastecimentoShow(Sender: TObject);
    procedure cbBombaExit(Sender: TObject);
    procedure edPerc_ImpostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edLitrosExit(Sender: TObject);
    procedure edValorTotalExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtivaTab(pTs : TTabSheet);
    procedure CalculaValorTotal;
    procedure CalculaLitrosTotal;
  end;

var
  frmCadastros: TfrmCadastros;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCadastros.AtivaTab(pTs : TTabSheet);
var
  i : integer;
begin
  for i := 0 to pgCadastros.PageCount - 1 do
  begin
    pgCadastros.Pages[i].TabVisible := False;
    if pgCadastros.Pages[i].Name = pTs.Name then
    begin
      pgCadastros.Pages[i].TabVisible := True;
      pgCadastros.ActivePage := pTs;
    end;
  end;

end;

procedure TfrmCadastros.cbBombaExit(Sender: TObject);
begin
  if dm.qryAbastecimentos.State in [dsInsert, dsEdit] then
  begin
    dm.BuscarDadosAbastecimento(cbBomba.KeyValue);
    edData.Field.Value := dm.qryDadosAbastecimentoDATA.Value;
    edHora.Field.Value := dm.qryDadosAbastecimentoHORA.Value;
    edUsuarioAbastecimento.Field.Value := dm.vgIdUsuario;
  end;
end;

procedure TfrmCadastros.edLitrosExit(Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TfrmCadastros.edNomeUsuariosKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmCadastros.edPerc_ImpostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not Ord(Key) in [0,9] then
    Abort;
end;

procedure TfrmCadastros.edValorTotalExit(Sender: TObject);
begin
  CalculaLitrosTotal;
end;

procedure TfrmCadastros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCadastros.Free;
  frmCadastros := nil;
end;

procedure TfrmCadastros.tsAbastecimentoShow(Sender: TObject);
begin
  dm.AbrirUsuarios;
  DM.AbrirAbastecimento;
  dm.AbrirBombas;
end;

procedure TfrmCadastros.tsBombasShow(Sender: TObject);
begin
  dm.AbrirTanques;
  dm.AbrirBombas;
end;

procedure TfrmCadastros.tsCombustiveisShow(Sender: TObject);
begin
  dm.AbrirCombustiveis;
end;

procedure TfrmCadastros.tsTanquesShow(Sender: TObject);
begin
  dm.AbrirCombustiveis;
  dm.AbrirTanques;
end;

procedure TfrmCadastros.tsUsuariosShow(Sender: TObject);
begin
  dm.AbrirUsuarios;
end;

procedure TfrmCadastros.CalculaLitrosTotal;
begin
  edValorImposto.Field.Value := (edValorTotal.Field.value *
                                edPerc_Imposto.Field.Value / 100);
  edValor.Field.value := (edValorTotal.Field.value - edValorImposto.Field.Value;
  edLitros.Field.Value := edValor.Field.value / edValorVendaAbastecimento.Field.Value;
end;

procedure TfrmCadastros.CalculaValorTotal;
begin
  edValor.Field.value := (edValorVendaAbastecimento.Field.Value *
                          edLitros.Field.Value);

  edValorImposto.Field.Value := (edValor.Field.value *
                                edPerc_Imposto.Field.Value / 100);
  edValorTotal.Field.Value := (edValor.Field.Value + edValorImposto.Field.Value);
end;

end.
