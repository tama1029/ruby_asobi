# パターンマッチング

# 部分一致
p /bc/ =~ "abcde"

# 条件に合致しなければtrueにはならない
p /abcde/ =~ "bcde"

# 小文字大文字の区別はつく
p /b/ =~ "abc"
p /A/ =~ "a"

# matchしていなければnilなので 偽の条件にあたるのはfalse,nilだけなので

if /a/ =~ "abcde"
  p 'match!!'
end

# 配列オブジェクト宣言　空の場合

a = []
p a.class

kara_array = Array.new
p kara_array.class

# 配列オブジェクト宣言　中身付きの場合

b = [1,2,3]

# 配列オブジェクトの各要素取得

p b[0]
p b[1]
p b[2]

# 配列オブジェクトは 一つ一つが　変数がオブジェクトへラベルを付けるのと酷似しているので
# 代入もできる
# また、変数と同様にラベルなので、オブジェクトの中身が変更されると複数に影響する

c = b
b[0] = 10
p b[0]
p c[0]

# 一つ一つが変数のようなものなので計算もできる

d = [1,2,3]
d[0] = (d[0] + d[1]) * d[2]
p d[0]

# 配列オブジェクトへの追加

d << 10
p d

d << 5 << 6
p d

# 配列オブジェクトの結合

p d.join(', ')

# 配列オブジェクトの要素数

p d.length

# 配列オブジェクトの各要素の取り出し

d.each do |e|
  p e
end

# ハッシュオブジェクト宣言　空の場合
hash1 = {} # 空の場合こっち使う　書くの少ないから
p hash1.class

hash2 = Hash.new
p hash2.class

# ハッシュオブジェクト宣言 中身付きの場合

hash3 = {"key" => 20}
p hash3.class

# 中身がない場合のエラーとおもいきやnil

begin
  p hash3["hoge"]
rescue => e
  p e
end

# 様々なhashの書き方
# 
# {"key" => 20}
#
# シンボルを使って記述することができる、シンボルを使った場合はシンボルで呼び出す
#
# {:key => 20}
#
# {key: 20}
#

hash4 = {:key => 20}
hash5 = {key: 20}

p hash3["key"]
p hash4[:key]
p hash5[:key]

# シンボルを使って記述したものを文字列キーで呼び出すことはできない

p hash4["key"]
p hash5["key"]

# シンボルとは何か
# Ruby空間に唯一つ存在するobject_idに紐づく名前

my_name = 'Charlie'
his_name = 'Charlie'

p my_name.intern.object_id
p his_name.intern.object_id

# hashのオブジェクトid

hash6 = {what_symbol1: "hoge"}
p hash6[:what_symbol1]

hash7 = hash6
p hash7[:what_symbol1]

p hash6.object_id
p hash7.object_id
