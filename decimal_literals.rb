require 'benchmark'

rational = 0.1r
decimal =  0.1

puts rational
# (1/10)
puts decimal 
# (0.1l)

puts rational == decimal
# True
puts rational * 3 == decimal * 3
# False

Benchmark.bm do |x|
	x.report("with suffix") { for i in 1..1000000; a = 0.1r; end }
	x.report("without suffix") { for i in 1..1000000; a = 0.1; end }
end
# Seems like they are the same in performance wise

# Frozen String Literals are removed

