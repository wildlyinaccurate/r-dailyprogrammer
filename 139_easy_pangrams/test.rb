require 'open3'
require 'test/unit/assertions'
include Test::Unit::Assertions

Open3.popen3("ruby solution.rb") { |stdin, stdout|
  stdin.puts '3'
  stdin.puts 'The quick brown fox jumps over the lazy dog.'
  stdin.puts 'Pack my box with five dozen liquor jugs'
  stdin.puts 'Saxophones quickly blew over my jazzy hair'

  results = stdout.read.split("\n")
  booleans = results.map { | result | result.split.first }

  assert booleans[0] == "True", "Expected first result to be True"
  assert booleans[1] == "True", "Expected first result to be True"
  assert booleans[2] == "False", "Expected first result to be False"
}

puts "All tests passed!"
