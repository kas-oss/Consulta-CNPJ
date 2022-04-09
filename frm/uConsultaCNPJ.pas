unit uConsultaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.WinXPanels, Vcl.ExtCtrls, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, System.JSON, System.JSON.Readers, System.JSON.Types,
  Empresa;

type
  TfrmConsultaCNPJ = class(TForm)
    Panel1: TPanel;
    pTopo: TPanel;
    CardPanel: TCardPanel;
    cardConsulta: TCard;
    Panel5: TPanel;
    edtCnpj: TEdit;
    Panel4: TPanel;
    btnConsultarCnpj: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel6: TPanel;
    cardResultado: TCard;
    Panel2: TPanel;
    btnNovaConsulta: TSpeedButton;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    Memo: TMemo;
    cardResultadoEdt: TCard;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit10: TEdit;
    Label14: TLabel;
    ListBox1: TListBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarCnpjClick(Sender: TObject);
    procedure btnNovaConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCNPJ: TfrmConsultaCNPJ;

implementation

{$R *.dfm}

procedure TfrmConsultaCNPJ.btnConsultarCnpjClick(Sender: TObject);
var
  stringReader : TStringReader;
  jsonReader   : TJsontextReader;
  chave, valor : string;
  jsonEmpresa  : TJSONValue;
  empresa      : TEmpresa;
  jsonArray    : TJSONArray;

//  empresa

begin
  empresa := TEmpresa.Create;

  RESTClient.BaseURL := 'https://receitaws.com.br/v1/cnpj/' + edtCnpj.Text;
  RESTRequest.Execute;

  jsonEmpresa := RESTRequest.Response.JSONValue;

  empresa.complemento          := jsonEmpresa.GetValue<string>('complemento');
  empresa.dataSituacao         := jsonEmpresa.GetValue<string>('data_situacao');
  empresa.complemento          := jsonEmpresa.GetValue<string>('complemento');
  empresa.tipo                 := jsonEmpresa.GetValue<string>('tipo');
  empresa.nome                 := jsonEmpresa.GetValue<string>('nome');
  empresa.uf                   := jsonEmpresa.GetValue<string>('uf');
  empresa.telefone             := jsonEmpresa.GetValue<string>('telefone');
  empresa.email                := jsonEmpresa.GetValue<string>('email');
  empresa.situacao             := jsonEmpresa.GetValue<string>('situacao');
  empresa.bairro               := jsonEmpresa.GetValue<string>('bairro');
  empresa.logradouro           := jsonEmpresa.GetValue<string>('logradouro');
  empresa.numero               := jsonEmpresa.GetValue<string>('numero');
  empresa.cep                  := jsonEmpresa.GetValue<string>('cep');
  empresa.municipio            := jsonEmpresa.GetValue<string>('municipio');
  empresa.porte                := jsonEmpresa.GetValue<string>('porte');
  empresa.abertura             := jsonEmpresa.GetValue<string>('abertura');
  empresa.naturezaJuridica     := jsonEmpresa.GetValue<string>('natureza_juridica');
  empresa.fantasia             := jsonEmpresa.GetValue<string>('fantasia');
  empresa.cnpj                 := jsonEmpresa.GetValue<string>('cnpj');
  empresa.ultimaAtualizacao    := jsonEmpresa.GetValue<string>('ultima_atualizacao');
  empresa.status               := jsonEmpresa.GetValue<string>('status');
  empresa.efr                  := jsonEmpresa.GetValue<string>('efr');
  empresa.motivoSituacao       := jsonEmpresa.GetValue<string>('motivo_situacao');
  empresa.situacaoEspecial     := jsonEmpresa.GetValue<string>('situacao_especial');
  empresa.dataSituacaoEspecial := jsonEmpresa.GetValue<string>('data_situacao_especial');
  empresa.capitalSocial        := jsonEmpresa.GetValue<string>('capital_social');

//  ShowMessage(jsonEmpresa.GetValue<string>('complemento'));
  Memo.Lines.Text := empresa.ToString;




//  Memo.Lines.Text :=




  CardPanel.ActiveCardIndex := 1;
  pTopo.Visible := true;







end;

procedure TfrmConsultaCNPJ.btnNovaConsultaClick(Sender: TObject);
begin
  CardPanel.ActiveCardIndex := 0;
  pTopo.Visible := false;
end;

procedure TfrmConsultaCNPJ.FormCreate(Sender: TObject);
begin
  CardPanel.ActiveCardIndex := 0;
  pTopo.Visible := false;

end;

end.
