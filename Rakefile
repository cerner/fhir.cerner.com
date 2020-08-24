# frozen_string_literal: true

require 'nanoc/tasks'

task default: [:test]

desc 'Compile the site'
task :compile do
  `nanoc compile`
end

desc 'Test the output'
task test: %i[clean remove_output_dir compile] do
  require 'html/proofer'
  HTML::Proofer.new('./output').run
end

desc 'Remove the output dir'
task :remove_output_dir do
  FileUtils.rm_r('output') if File.exist?('output')
end
