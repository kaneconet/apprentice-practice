# 与えられた整数の配列の要素を2乗した配列を返す square関数, mapを使用
def square(numbers)
  numbers.map do |number|
    number * number
  end
end
squared_numbers = square([5, 7, 10])
print squared_numbers
