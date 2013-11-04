require 'open3'
require 'test/unit/assertions'
include Test::Unit::Assertions

def test(first, second, expected)
  Open3.popen3("ruby solution.rb") {|stdin, stdout|
    stdin.puts first
    stdin.puts second

    actual = stdout.gets.to_f.round(4)

    assert actual == expected, "Expected #{expected}, got #{actual}"
  }
end

test "1 -5.2 3.8", "1 8.7 -4.1", 0.00390
test "4 0.04 -0.02", "4 -0.02 -0.03", 4324.3279

puts "All tests passed!"
