require "cucumber/rake/task"
require "yaml"

retry_qtd_base = 2

desc "Performs the given acceptance testing, remotely or locally under a brand environment simulating a given device.
Defined profiles in cucumber.yml: \n * #{YAML.load_file("cucumber.yml").keys.join("\n * ")}"
task :test, :amb, :tags, :retry_qtd do |_, args|
  amb = args[:amb]
  tags = args[:tags]
  retry_qtd = args[:retry_qtd] || retry_qtd_base

  Cucumber::Rake::Task.new(:execute) do |task|
    task.cucumber_opts = [
      "--profile #{amb}",
      "--profile reports",
      "--tags #{tags}",
      '--tags "not @wip"',
      '--tags "not @obsoleto"',
      "--retry #{retry_qtd}",
    ]
  end

  Rake::Task[:execute].invoke
end
