#puts (0..3).to_a.map{gets.chomp.reverse}.reverse
#p (0..3).map()

# [0, 1, 2, 3]に対して 一個づつ a*2+5して配列にして配列反転して返す
puts (0..3).map{|a| a*2+5}.reverse

# [0, 1, 2, 3]に対して sum + 0, sum + 1, sum + 2, sum + 3を繰り返し　最後の結果を返却する
puts 'sum by reduce'
puts (0..3).reduce { |sum , n | sum + n }

# 上記と同じことをもっと簡単に
puts 'sum by reduce easy'
puts (0..3).reduce(:+)

# 初期値追加
puts (0..3).reduce(100) { |sum , n | sum + n }
puts (0..3).reduce(100,:+)

# 一番長い語句を出力
puts %w{ cat sheep bear cookie }.reduce{ |memo, word| memo.length > word.length ? memo : word }
puts %w{ cat sheep bear cookie }.max_by{ |a| a.length }
