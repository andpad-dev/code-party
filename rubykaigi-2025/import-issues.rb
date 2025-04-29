#!/usr/bin/env ruby

Dir.chdir(__dir__)

require "json"

def gh(*args)
  IO.pipe do |input, output|
    system("gh", *args, 1 => output)
    output.close
    JSON.parse(input.read)
  end
end

def indent(text, width)
  text.lines.collect {|line| (" " * width) + line}.join
end

template = File.read("feedback.yaml")
issues = gh("issue",
            "list",
            "--repo", "andpad-dev/code-party",
            "--json", [
              "author",
              "body",
              "number",
              "title",
            ].join(","))
issues.each do |issue|
  _, fun, groups, etc = issue["body"].strip.split(/^### .*$/)
  answer = template.dup
  indent_width = 4
  answer.sub!(indent("(Answer)", indent_width)) do
    indent(fun.strip, indent_width)
  end
  answer.sub!(indent(<<-GROUPS_TEMPLATE.chomp, indent_width)) do
- (Group1)
- (Group2)
- ...
GROUPS_TEMPLATE
    indent("- #{groups.strip}", indent_width)
  end
  answer.sub!(indent("(Answer)", indent_width)) do
    indent(etc.strip, indent_width)
  end
  login = issue["author"]["login"]
  number = issue["number"]
  output = "feedback/#{login}.yaml"
  File.write(output, answer)
  system("git", "add", output)
  system("git", "commit",
         "-m", <<-MESSAGE)
rubykaigi-2025: Add answer by #{login}

Fix \##{number}

Co-authored-by: #{issue["author"]["name"]} <#{login}@users.noreply.github.com>
  MESSAGE
  system("gh",
         "issue",
         "close",
         number.to_s,
         "--repo", "andpad-dev/code-party",
         "--comment", <<-COMMENT,
Thanks for joining Code Party! Let's keep enjoying with Ruby!!!

コード懇親会の参加ありがとうございました！引き続きRubyで楽しみましょう！！！
         COMMENT
         "--reason", "completed")
  system("git", "push")
end
