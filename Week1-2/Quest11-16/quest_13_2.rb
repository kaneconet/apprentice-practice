# 例外処理の付いた電卓プログラム
def calculate(num1, num2, operator)
  if num1.is_a?(Integer) && num2.is_a?(Integer)
    case operator
    when "+"
      return num1 + num2
    when "-"
      return num1 - num2
    when "*"
      return num1 * num2
    when "/"
      if num2 == 0
        raise ZeroDivisionError
      else
        return num1 / num2
      end
    else
      puts "演算子には +、-、、/ のいずれかを使用してください"
    end
  else
    puts "num1、 num2 には整数を入力してください"
  end
end

puts "1番目の整数を入力してください:"
num1 = gets.chomp.to_i

puts "2番目の整数を入力してください:"
num2 = gets.chomp.to_i

puts "演算子(+, -, *, /)を入力してください:"
operator = gets.chomp

begin
  result = calculate(num1, num2, operator)
  puts result
rescue ZeroDivisionError
  puts "ゼロによる割り算は許可されていません"
end

=begin
calculate(1, 0, '/')
calculate(1.5, 2, '+')
calculate(1.5, 2, '**')
calculate(5, 2, '*')
=end
