### 基礎知識

# 変数
#
# オブジェクトにラベルを付ける
# rubyのオブジェクトは全てオブジェクトidというもので管理されている
# greeting : Stringオブジェクト
# http://www.minituku.net/courses/566428009/lessons/660326487/texts/56900725?locale=ja

greeting = "Hello, Ruby !"
p greeting
p greeting.class
p "#{greeting}"

# オブジェクトidは個別に割り振られる

p greeting.object_id
greeting2 = "hoge"
p greeting2.object_id

# ラベルを付けるというのは　詳しくいうと　オブジェクトidを記憶する

greeting3 = greeting
p greeting3.object_id

# if thenは書かない

if greeting == "Hello, Ruby !"
  p "that\'s right"
elsif greeting == "hoge"
  p "bad"
else
  p "nothing"
end

# while 条件式がtrueな間は繰り返す

while_value = 0
while while_value < 5
  p while_value
  while_value += 1
end

# method
#
# ローカルスコープの確認

method_value = 10
def method_test
  begin
    p method_value
  rescue => e
    p e
  end
end

method_test

# 偽の値になるのは　false,nilのみ
