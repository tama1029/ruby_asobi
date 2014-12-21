a = [1]
puts 1
for i in 1...20
  a = [a.dup.push(0), a.dup.unshift(0)].transpose.map{|r|r.inject(:+)}
  puts a.join(' ')
end
