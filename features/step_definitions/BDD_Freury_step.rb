Dado('que eu esteja no site do Fleury na tela de Unidades') do
    @home.load
    @home.acessa_pagina_unidades
    expect(@unidades.estou_na_pagina_unidades?).to eq true
end
  
  
Quando('realizo o filtro pela facilidade {string}') do |facilidade1|
    @unidades.abre_lista_facilidades
    @unidades.seleciona_facilidade(facilidade1)
    
end

Quando('realizo o filtro pela facilidade {string},{string}') do |facilidade1, facilidade2|
    @unidades.abre_lista_facilidades
    @unidades.seleciona_facilidade(facilidade1)
    @unidades.seleciona_facilidade(facilidade2)
end

Quando('realizo o filtro pela facilidade {string},{string}') do |facilidade1, facilidade2, facilidade3|
    @unidades.abre_lista_facilidades
    @unidades.seleciona_facilidade(facilidade1)
    @unidades.seleciona_facilidade(facilidade2)
    @unidades.seleciona_facilidade(facilidade2)
end

  
Então('devo visualizar as Unidades Próximas disponíveis para Atendimento com a facilidade selecionada') do
    expect(@unidades.retornou_unidades?).to eq true
end
  
Então('visualizo o detalhe da primeira unidade exibida') do
    unidade_clicada = @unidades.clica_na_primeira_unidade_encontrada
    unidade_detalhada = @unidadeselecionada.retorna_nome_da_unidade_detalhada
    expect(unidade_clicada).to eq unidade_detalhada
end