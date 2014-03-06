require 'bundler/setup'
Bundler.require(:default)

task :sauce, :files, :concurrency, :test_options, :parallel_options do |t, args|
    run_parallel_tests(t, args, :rspec)
end

task :default => [:sauce]