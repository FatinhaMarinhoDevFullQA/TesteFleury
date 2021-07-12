# frozen_string_literal: true

class Home < SitePrism::Page
    element :menu_unidades, '#button-title-desktop-header', text: 'Unidades'
  
    set_url "/"
  
    def acessa_pagina_unidades
        menu_unidades.click
    end
  end
  