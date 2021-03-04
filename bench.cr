require "./src/fast_to_f"
require "benchmark"

N = (ARGV[0]? || 100000000).to_i64
V = (ARGV[1]? || rand.to_s)
p V

t = Time.local
s = 0.0
N.times do
  s += V.to_f64
end
p s
p Time.local - t

t = Time.local
s = 0.0
N.times do
  if d = FastToF.parse?(V)
    s += d
  end
end
p s
p Time.local - t
