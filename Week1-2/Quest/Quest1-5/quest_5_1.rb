# 2つの整数 x, y の大小を比較し、xとyの大小関係を出力する関数 greater を定義
def greater(x, y)
  if x > y
    puts "x > y"
  elsif x < y
    puts "x < y"
  else
    puts "x = y"
  end
end

greater(5, 4)
greater(-50, -40)
greater(10, 10)
