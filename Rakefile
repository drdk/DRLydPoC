require "rake"
require "parallel"
require "cucumber/rake/task"

Cucumber::Rake::Task.new(:first) do |task|
  ENV["CONFIG_NAME"] ||= "first"
  task.cucumber_opts = ["--format=pretty", "--require features/", "features/"]
end

task :default => :first
