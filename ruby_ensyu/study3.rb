# unless

flag = false
unless flag 
  p "偽なので通る"
end

if !flag
  p "真なので通る"
end

flag = true
unless !flag
  p "偽なので通る"
end

p "修飾子" if flag

# case

case_val = 2
case case_val
when 2
  p "case 2"
end

# 比較演算子

val = 42
if val > 42
  p "実行しない"
end

if val >= 42
  p "実行する"
end

# 論理演算子
#
# 優先順位 && > and > ||  > or

if !true || false
  p "論理演算子"
else
  p "false"
end

p true || true && false

# && > ||
p (true || true) && false

# and > ||
p true || true and false

