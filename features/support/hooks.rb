# frozen_string_literal: true

Before do |scenario|
  pega_steps(scenario)
  
  #Instanciando as classes
  @home = Home.new
  @unidades = Unidades.new
  @unidadeselecionada = UnidadeSelecionada.new

end

After do |scenario|
  nome_cenario = scenario.name.gsub(/\s+/, "_").tr("/#", "_c")
  step = pega_nome_step
  screenshot_name = "cenario_#{nome_cenario}_step_#{step}"
  begin
    if scenario.failed?
      print = "logs/screenshots/test_falhou/#{screenshot_name}.png"
    else
      print = "logs/screenshots/test_passou/#{screenshot_name}.png"
    end
    # add_browser_logs
    Capybara.page.save_screenshot(print)
  rescue StandardError
    raise "Erro ao gerar screenshots"
  end
end

AfterStep do
  @count += 1
end

def pega_steps(scenario)
  @count = 0
  @steps = []
  @steps = scenario.test_steps.map(&:text)
  @steps.delete_if { |text| text == "AfterStep hook" }
end

def pega_nome_step
  @nome_step = @steps[@count - 1]
  @nome_step = @nome_step.gsub(/[^A-Za-z0-9 ]/, "")
  @nome_step = @nome_step.tr(" ", "_")
  @nome_step
end

at_exit do
  ReportBuilder.configure do |config|
    config.json_path = "logs/json/report.json"
    config.report_path = "logs/html/Automacao_Fatima_Fleury"
    config.report_types = %i[html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = "Projeto Fleury Automação"
    config.compress_images = false
    config.additional_info = {
      "Projeto:" => "Projeto Fleury Automação",
      "Ambiente" => AMBIENTE.upcase,
      "Data de Geracao" => DateTime.now.strftime("%d/%m/%Y - %H:%M:%S"),
    }
    config.color = "blue"
  end
  ReportBuilder.build_report
end
