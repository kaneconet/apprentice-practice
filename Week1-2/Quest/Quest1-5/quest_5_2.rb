# 年齢に応じて東京駅から新宿駅までの料金を出力する関数 train_fare を定義

def train_fare(age)
  adult_price = 200
  child_price = 100
  infant_price = 0
  if age >= 12
    puts adult_price
  elsif age >= 6 && age < 12
    puts child_price
  else
    puts infant_price
  end
end

train_fare(12)
train_fare(6)
train_fare(5)
