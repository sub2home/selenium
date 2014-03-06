require 'selenium-webdriver'

task :selenium do

    environments = [
        { browser: 'firefox', version: '5', os: 'XP' }
    ]

    scenarios = Dir['scenarios/**/*.rb']

    environments.each do |env|
        ENV['WEBDRIVER_BROWSER'] = env[:browser]
        ENV['WEBDRIVER_VERSION'] = env[:version]
        ENV['WEBDRIVER_OS'] = env[:os]

        scenarios.each do |scenario|
            ruby scenario
        end
    end

end

task :default => [:selenium]