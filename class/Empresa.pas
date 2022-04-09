unit Empresa;

interface

uses
  System.Generics.Collections, System.SysUtils;
type
  TAtividade = class
    public
      Codigo    : string;
      Descricao : string;
    private

end;

type
  TQsa = class
    public
      qual : string;
      nome : string;
    private

end;

type
  TEmpresa = class
    public
      atividadePrincipal    : TAtividade;
      dataSituacao          : string;
      complemento           : string;
      tipo                  : string;
      nome                  : string;
      uf                    : string;
      telefone              : string;
      email                 : string;
      situacao              : string;
      bairro                : string;
      logradouro            : string;
      numero                : string;
      cep                   : string;
      municipio             : string;
      porte                 : string;
      abertura              : string;
      naturezaJuridica      : string;
      fantasia              : string;
      cnpj                  : string;
      ultimaAtualizacao     : string;
      status                : string;
      efr                   : string;
      motivoSituacao        : string;
      situacaoEspecial      : string;
      dataSituacaoEspecial  : string;
      capitalSocial         : string;
      qsa                   : TQsa;
      atividadesSecundarias : TObjectList<TAtividade>;
      function ToString: string;

    Constructor Create;

    private
end;

implementation

{ TEmpresa }

constructor TEmpresa.Create;
begin
  qsa                   := TQsa.Create;
  atividadePrincipal    := TAtividade.Create;
  atividadesSecundarias := TObjectList<TAtividade>.Create;
end;

function TEmpresa.ToString: string;
var
  retorno : string;
begin
  retorno :=
   'Atividade Principal: '    + atividadePrincipal.Codigo + ' - ' + atividadePrincipal.Descricao +#13#10+
   'Data Situacao: '          + dataSituacao                     +#13#10+
   'Complemento: '            + complemento                      +#13#10+
   'Tipo: '                   + tipo                             +#13#10+
   'Nome: '                   + nome                             +#13#10+
   'UF: '                     + uf                               +#13#10+
   'Telefone: '               + telefone                         +#13#10+
   'Email: '                  + email                            +#13#10+
   'Situacao: '               + situacao                         +#13#10+
   'Bairro: '                 + bairro                           +#13#10+
   'Logradouro: '             + logradouro                       +#13#10+
   'Numero: '                 + numero                           +#13#10+
   'CEP: '                    + cep                              +#13#10+
   'Municipio: '              + municipio                        +#13#10+
   'Porte: '                  + porte                            +#13#10+
   'Abertura: '               + abertura                         +#13#10+
   'NaturezaJuridica: '       + naturezaJuridica                 +#13#10+
   'Fantasia: '               + fantasia                         +#13#10+
   'CNPJ: '                   + cnpj                             +#13#10+
   'Última Atualização: '     + ultimaAtualizacao                +#13#10+
   'Status: '                 + status                           +#13#10+
   'Efr: '                    + efr                              +#13#10+
   'MotivoSituacao: '         + motivoSituacao                   +#13#10+
   'SituacaoEspecial: '       + situacaoEspecial                 +#13#10+
   'DataSituacaoEspecial: '   + dataSituacaoEspecial             +#13#10+
   'CapitalSocial: '          + capitalSocial                    +#13#10+
   'Qsa: '                    + qsa.qual + ' - ' + qsa.nome      +#13#10;
//   'Atividades Secundarias: ' + atividadesSecundarias            +#10#13;

  Result:= retorno;
end;




end.
