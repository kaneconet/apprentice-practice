def fibonacci(n)
  # 日々のお小遣いを格納するための配列を定義
  array = []
  for i in 0..n
    if i == 0
      array.push(i)
    elsif i == 1
      array.push(i)
    else
      fib_number = array[-1] + array[-2]
      array.push(fib_number)
    end
  end
  puts array[n]
end

fibonacci(0)
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(7)
fibonacci(30)
