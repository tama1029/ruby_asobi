# 1から100までの数値を合計してください。そして、その合計値を標準出力に出力してください。

count = 1
c = 0
100.times do
  c += count
  count += 1
end

p c
