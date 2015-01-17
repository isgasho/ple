def swap(a, i, j)
  a[i], a[j] = a[j], a[i]
end

def generatePermutations(n, a)
  if n == 0
    puts a.join
  else
    0.upto(n) do |i|
      generatePermutations(n-1, a)
      swap(a, n % 2 == 0 ? i : 0, n)
    end
  end
end

if ARGV.length != 1
  STDERR.puts 'Exactly one argument is required'
  exit 1
end
generatePermutations(ARGV[0].length-1, ARGV[0].chars)