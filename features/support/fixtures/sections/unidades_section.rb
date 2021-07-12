# frozen_string_literal: true

class CardUnidade < SitePrism::Section
    element :nome_unidade , 'h3[class*="typography"]'
    element :btn_ver_detalhes, 'div[class*="buttoncomponentstyl"]', text: 'Ver detalhes'
end
  