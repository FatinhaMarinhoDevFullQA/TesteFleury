#language: pt

Funcionalidade: Unidade de atendimento

Como usuário, gostaria de realizar consultas das Unidades de atendimento 
Para que eu possar visualizar as 'Unidades Próximas' e disponíveis para Atendimento na minha região


@unidades_por_facilidades @uma_facilidade
Cenário: Validar processo de pesquisa das unidades disponiveis para atendimento, quando selecionado 'Uma facilidades'
Dado que eu esteja no site do Fleury na tela de Unidades
Quando realizo o filtro pela facilidade "Acessibilidade"
Então devo visualizar as Unidades Próximas disponíveis para Atendimento com a facilidade selecionada
E visualizo o detalhe da primeira unidade exibida 

@unidades_por_facilidades @duas_facilidades
Cenário: Validar processo de pesquisa das unidades disponiveis para atendimento, quando selecionado 'Duas facilidades'
Dado que eu esteja no site do Fleury na tela de Unidades
Quando realizo o filtro pela facilidade "Acessibilidade" , "Próximo ao metro"
Então devo visualizar as Unidades Próximas disponíveis para Atendimento com as facilidades selecionadas
E visualizo o detalhe da primeira unidade exibida 

@unidades_por_facilidades @duas_facilidades
Cenário: Validar processo de pesquisa das unidades disponiveis para atendimento, quado selecionado 'Três  facilidades'
Dado que eu esteja no site do Fleury na tela de Unidades
Quando realizo o filtro pela facilidade "Acessibilidade" , "Próximo ao metro" E "Vacinação"
Então devo visualizar as Unidades Próximas disponíveis para Atendimento com as facilidades selecionadas
E visualizo o detalhe da primeira unidade exibida 


       
Cenário: Selecionar 'Ver detalhes' da primeira unidade apresentada
Dado que eu esteja no site do Fleury na tela da 'Central de Atendimento' 
E clico no menu 'Unidades' 
E visualizo as 'Unidades Próximas' disponíveis para Atendimento 
E visualizo 'Unidades Próximas' com as facilidades selecionadas anteriormente
E clico no botão 'Ver detalhes' da primeira unidade apresentada
Então visualizo os detalhes da  primeira unidade de atendimento 
