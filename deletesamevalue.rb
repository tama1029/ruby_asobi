a = [1,2,3,3,2,4,5]

d = []
a.each do |b|
  counter = 0
  a.each do |c|
    if c==b
      counter += 1
    end
  end

  if counter == 1 
    d.push(b)
  end
end

puts d
