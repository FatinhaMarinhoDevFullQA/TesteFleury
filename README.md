
 Linguagem de programação: Ruby;
 Intepetrar\interagir ouseja automatizar os elementosos :Capybara;
 Escrever as features (cenários) dos testes  Cucumber

Versão do Ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32] 
Para instalar o Bundler (gerenciador de extensões) rodar o comando abaixo:
gem install bundler -v 1.11.2

Para instalar todas as extensões necessárias para o projeto rodar o comando abaixo:
bundle install

Para rodar todos os cenários da automação front_end utilizar 'cucumber -t @unidades_por_facilidades -p Ambiente_Prod'
Pode rodar uma por uma também trocando a tag -t @uma_facilidade ou -t @duas_facilidades

O relatório HTML com resultado é gerado na pasta: \logs\html 
Os screenshots estão na pasta: \logs\screenshots 

Obs.: As classes estão instanciados no arquivo 'Hooks'.