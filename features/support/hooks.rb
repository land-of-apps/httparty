if AppMap::Cucumber.enabled?
  Around do |scenario, block|
    appmap = AppMap.record do
      block.call
    end
    AppMap::Cucumber.write_scenario(scenario, appmap)
  end
end