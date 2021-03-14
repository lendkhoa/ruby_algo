# coding: utf-8
require 'rake/testtask'

task :run do
    ruby 'lib/ruby_algo.rb'
end

task default: "test"
Rake::TestTask.new do |task|
  task.pattern = 'test/*_test.rb'
end

