require 'rubygems'
require 'bundler/setup'
require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :deafult => :spec

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = "**/*_spec.rb"
end

task :say_hi do
  puts "hi"
end