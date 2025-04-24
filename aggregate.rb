#!/usr/bin/env ruby

require "yaml"

event = ARGV[0]
if event.nil?
  puts("Usage: #{$0} event")
  puts(" e.g.: #{$0} rubykaigi-2024")
  exit(false)
end

feedbacks = {}
Dir.chdir(__dir__) do
  Dir.glob("#{event}/feedback/*.yaml").sort.each do |yaml|
    account = File.basename(yaml).delete_suffix(".yaml")
    begin
      feedbacks[account] = YAML.load(File.read(yaml))
    rescue Psych::SyntaxError
      $stderr.puts("#{account}: syntax error: #{$!}")
    end
  end
end

grouped_feedbacks = feedbacks.group_by do |account, feedback|
  feedback["questions"]["groups"]
end
grouped_feedbacks.each do |groups, group_feedbacks|
  groups_label = groups.join(" | ")
  puts("### #{groups_label}")
  puts
  puts("#### Feedback")
  puts
  puts("#{group_feedbacks.size}")
  puts

  _, key_feedback = group_feedbacks.first
  key_feedback["questions"].each do |question, _|
    next if question == "groups"
    puts("##### #{question}")
    puts
    group_feedbacks.each do |account, feedback|
      answer = feedback["questions"][question]
      account_markdown = "[#{account}](https://github.com/#{account})"
      if answer.is_a?(Array)
        puts("#{account_markdown}:")
        puts(answer.join("\n"))
      else
        puts("#{account_markdown}: #{answer}")
      end
      puts
    end
  end
end
