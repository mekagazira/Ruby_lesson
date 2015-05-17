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

# 条件分岐 if
score = 80
if score > 60
  puts "OK"
elsif (score > 40)
  puts "soso..."
else
  puts "NG"
end

puts "OK" if score > 60

=begin
 false：false nil(オブジェクトが存在しない)
 true：それ以外

if x
   puts "...."
end
=end

# 条件演算子
b = 10
c = 20
a = b > c ? b : c
puts a

# 多重代入
d,e = 30,40;
puts d
puts e

# 条件分岐 case文
signal = "red"

case signal
when "red"
  puts "stop"
when "green","blue"
  puts "go"
when "yellow"
  puts "caution"
else
  puts "wrong signal"
end


# 繰り返し処理
# times
3.times do
  puts "hello"
end

10.times do |i|
  if(i == 1)
    next
  end

  puts "#{i}:hello"

  if(i == 5)
    break
  end
end

# for
for i in 0..2 do
  puts i
end

for color in ["red","blue","yellow"] do
  puts color
end

["red","blue","yellow"].each do |color|
  puts color
end
# each
{"red":200,"blue":100,"yellow":1000}.each do |indexcolor,valueprice|
  puts "#{indexcolor} : #{valueprice}"
end

# 関数的メソッド
def sayHi
  puts "hello"
end
sayHi()

def sayHi2(name)
  puts "hello " + name
end
sayHi2("Tom")

def sayHi3(name = "steve")
  return "hello " + name
end
puts sayHi3()

# クラス
# クラス名：大文字始まりにする。
class User

  # クラス変数
  @@user = 0

  def initialize(name)
    # インスタンス変数
    @name = name
    @@user += 1
  end

  # インスタンスメソッド
  def sayHi
    puts "hello, my name is #{@name}"
  end

  # クラスメソッド
  def User.sayHello
    puts "hello from User class #{@@user}"
  end

=begin
  # getter
  def name
    @name
  end
  # setter
  def setname(newname)
    @name = newname
  end

  attr_reader :name
  attr_writer :name
=end
  # setter/getterを自動生成する。
  attr_accessor :name
end


User.sayHello()
tom = User.new("Tom")
bob = User.new("Bob")
tom.sayHi()
bob.sayHi()
User.sayHello()

# クラスの継承
class SuperUser < User
  def shout
    puts "HELLO from #{@name}"
  end
end

jacob = User.new("Jacob")
noah = SuperUser.new("Noah")
jacob.sayHi()
noah.sayHi()
noah.shout()

SuperUser.sayHello()
User.sayHello()


# アクセサ
# インスタンス変数にアクセスする。
jacob.name="hoge"
puts jacob.name

# Timeクラス
t = Time.now
p t.year
p t

p t.strftime("%Y-%m-%d %H:%M:%S")
