lines = gets.to_i

lines.times do
  characters = gets.downcase
    .gsub(/[^a-z]/, '')
    .chars
    .group_by(&:chr)
    .map { | k, v | [k, v.length] }

  print characters.length == 26 ? 'True' : 'False'
  puts ' ' + characters.sort.map { | char, count | "#{char}: #{count}" }.join(', ')
end
