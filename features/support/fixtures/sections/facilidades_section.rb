# frozen_string_literal: true

class Facilidades < SitePrism::Section
    element :acessibilidade , 'div[class*="checkbox-field"]', text: 'Acessibilidade', match: :first
end
  