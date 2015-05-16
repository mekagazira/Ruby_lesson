# 変数 （英小文字から始まる）
# 定数 （栄大文字）
msg = "hello world"
p msg

ADMIN_EMAIL="hogehoge@gmail.com"
# ADMIN_EMAIL="hoge"

# データ（オブジェクト）
# -メソッド
# 文字列（Stringクラス）
p "hello world".length

# 数字オブジェクト
# アンダーバーを無視する。
a = 100_000_000
x = 10
y = 20.5
z = 1/3r #Rational(1,3)
# + - * / % **
p x % 3
#べき乗
p x ** 3
p x += 5

# 文字列オブジェクト
print "hello world"
puts "hello world"
p "hello world"
name = "tarou"
# シングルクオート
p 'hello #{name}'
# ダブルクオート
p "hello world #{name}"

# ! 破壊的メソッド
s = "jirou"
puts s.upcase!
puts s

# ? 真偽値を返却するメソッド
p s.empty?

# 配列オブジェクト
sales = [5,8,4]
p sales
p sales[1]
sales[1] = 10
p sales[1]
# 1番目から2つ返却
p sales[1,2]
# 0番目から2以下の要素をとる
p sales[0..2]
# 0番目から2未満の要素をとる
p sales[0...2]

# 0から2未満の要素を書き換える
p sales
sales[0...1] = [333,222,111]
p sales
sales[0...2] = []
p sales
sales[0,1] = [1,2,9,8,7,6,5,4,3]
p sales
p sales.sort.reverse
p sales.sort

# ハッシュオブジェクト
# key value
hash_sales = {"tarou" => 100, "jirou"=>200,"saburou"=>300}
p hash_sales
p hash_sales["tarou"]
# シンボル(文字列を使うより動作が速いらしい)
hash_sales2 = {:tarou => 100, :jirou=>200,:saburou=>300}
p hash_sales2
p hash_sales2[:jirou]
hash_sales3 = {tarou:100, jirou:200,saburou:300}
p hash_sales3
p hash_sales3[:saburou]

# オブジェクトの変換
a = 10
b = '5'
# p a + b
# 文字 ⇔ 数値
p a + b.to_i
p a + b.to_f
p a.to_s + b
# 配列 ⇔ Hash
h = {"tarou" => 100, "jirou"=>200,"saburou"=>300}
p h.to_a
hash_sales4 = {tarou:100, jirou:200,saburou:300}
p hash_sales4.to_a
p hash_sales4.to_a.to_h

# %記法
# 文字列
s = %Q(hello "hogehoge")
p s
# 配列
a = %W(a b c)
p a
