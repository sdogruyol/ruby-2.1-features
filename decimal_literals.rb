require 'benchmark'

rational = 0.1r
decimal =  0.1

puts rational == decimal
# True
puts rational * 3 == decimal * 3
# False

Benchmark.bm do |x|
	x.report("with suffix") { for i in 1..1000000; a = 0.1r; end }
	x.report("without suffix") { for i in 1..100000; a = 0.1; end }
end
# Seems like r suffix is 10 times slower

