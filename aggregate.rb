#!/usr/bin/env ruby

require "yaml"

event = ARGV[0]
if event.nil?
  puts("Usage: #{$0} event")
  puts(" e.g.: #{$0} rubykaigi-2024")
  exit(false)
end

questionnaires = {}
Dir.chdir(__dir__) do
  Dir.glob("#{event}/feedback/*.yaml").sort.each do |yaml|
    account = File.basename(yaml).delete_suffix(".yaml")
    begin
      questionnaires[account] = YAML.load(File.read(yaml))
    rescue Psych::SyntaxError
      $stderr.puts("#{account}: syntax error: #{$!}")
    end
  end
end

_, key_questionnairy = questionnaires.first
key_questionnairy["questions"].each do |question, _|
  puts("-" * question.size)
  puts(question)
  puts("-" * question.size)
  questionnaires.each do |account, questionnairy|
    answer = questionnairy["questions"][question]
    if answer.is_a?(Array)
      puts("#{account}:")
      puts(answer.join("\n"))
    else
      puts("#{account}: #{answer}")
    end
    puts("=" * 40)
  end
  puts
end
