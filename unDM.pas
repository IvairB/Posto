unit unDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.ADSDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.ADS, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    Con: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    DriverLink: TFDPhysADSDriverLink;
    qryUsuarios: TFDQuery;
    qryUsuariosID_USUARIO: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosUSUARIO: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosATIVO: TStringField;
    updUsuarios: TFDUpdateSQL;
    dsUsuarios: TDataSource;
    qryCombustiveis: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    updCombustiveis: TFDUpdateSQL;
    dsCombustiveis: TDataSource;
    qryTanques: TFDQuery;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    updTanques: TFDUpdateSQL;
    dsTanques: TDataSource;
    qryBombas: TFDQuery;
    IntegerField3: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    updBombas: TFDUpdateSQL;
    dsBombas: TDataSource;
    qryAbastecimentos: TFDQuery;
    IntegerField4: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    updAbastecimentos: TFDUpdateSQL;
    dsAbastecimentos: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirUsuarios;
    procedure AbrirTanques;
    procedure AbrirBombas;
    procedure AbrirCombustiveis;
    procedure AbrirAbastecimento;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.AbrirAbastecimento;
begin
  with qryAbastecimentos do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirBombas;
begin
  with qryBombas do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirCombustiveis;
begin
  with qryCombustiveis do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirTanques;
begin
  with qryTanques do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirUsuarios;
begin

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with DM.Con do
  begin
    if Connected then
      Connected := False;
    Connected := True;
  end;
end;

end.