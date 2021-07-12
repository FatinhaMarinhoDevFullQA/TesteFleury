# frozen_string_literal: true

class UnidadeSelecionada < SitePrism::Page
    element :nome_unidade, 'h1[class*="typography"]'
  
    set_url "/"
  
    def retorna_nome_da_unidade_detalhada
        nome_unidade.text
    end
  end
  