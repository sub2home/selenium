require 'selenium-webdriver'


task :selenium do
    environments = [
        {
            browser: 'firefox',
            version: '5',
            os: 'XP'
        }
    ]

    environments.each do |env|
        ENV['WEBDRIVER_BROWSER'] = env[:browser]
        ENV['WEBDRIVER_VERSION'] = env[:version]
        ENV['WEBDRIVER_OS'] = env[:os]

        ruby "base.rb"
    end

end

task :default => [:selenium]