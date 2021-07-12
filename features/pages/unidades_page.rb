# frozen_string_literal: true

class Unidades < SitePrism::Page
    element :menu_unidades, '#button-title-desktop-header', text: 'Unidades'
    element :label_voce_esta_em, 'span[class*="typographycomponentstyl"]', text: 'Você está em: '
    element :select_facilidades, '#checkoox-select-facilities'
    section :options_facilidades, Facilidades, 'div[class*="checkbox-select"]', match: :first
    sections :cards_unidades, CardUnidade, 'div[id*="unit-cell"]', wait: 2
    
    @@url_page = 'unidades'

    set_url "/#{@@url_page}"
  
    def url_atual
        URI.parse(current_url)
    end
    
    def estou_na_pagina_unidades?
        label_voce_esta_em
        url = url_atual().to_s
        
        if url.include? @@url_page

            return true
        else
            return @@url_page
        end
    end

    def abre_lista_facilidades
        select_facilidades.click
    end
    

    def seleciona_facilidade(facilidade)
        options_facilidades.find('div[class*="checkbox-field"]', text: "#{facilidade}", match: :first).click
    end

    def retornou_unidades?
        if cards_unidades.count > 0
            return true
        else
            return 'Não encontrou unidade para o filtro realizado'
        end
        
    end
    
    def clica_na_primeira_unidade_encontrada
        nome_unidade = cards_unidades[0].nome_unidade.text
        cards_unidades[0].btn_ver_detalhes.click
        nome_unidade
    end
    
    
  end
  