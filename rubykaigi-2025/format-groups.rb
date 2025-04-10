#!/usr/bin/env ruby

require "arrow"

path = ARGV[0]
if path.nil?
  $stderr.puts("#{$PROGRAM_NAME} event_347970_participants.csv")
  exit(false)
end

table = Arrow::Table.load(path).
          slice {|slicer| slicer["参加ステータス"] == "参加"}.
          slice {|slicer| slicer["ユーザー名"] != "sezemi_seplus"}.
          select_columns(1, 2, 9, 10).
          rename_columns(["id", "name", "themes", "plan"])

id_label = "Connpass user ID"
id_width = id_label.size
previous_themes = nil
p table.size
sorted_table = table.take(table.sort_indices("themes"))
sorted_table.each_raw_record do |id, name, themes, plan|
  if themes != previous_themes
    puts
    puts
    puts("Theme: #{themes}")
    puts("| #{id_label} | Name | Plan |")
    puts("| #{"-" * id_width} | ---- | ---- |")
  end
  puts("| %-*s | %s | %s |" % [id_width, id, name, plan])
  previous_themes = themes
end
