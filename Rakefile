require "rake/testtask"
require "syntax_tree/rake/write_task"

task default: %i[test, format]

SyntaxTree::Rake::WriteTask.new('format') { |t| t.source_files = "lib/**/*.rb" }

Rake::TestTask.new { |t| t.pattern = "./test/**/*_test.rb" }
