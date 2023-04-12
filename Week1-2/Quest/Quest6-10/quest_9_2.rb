# 両替
def convert_currency(amount, source_currency, target_currency, conversion_rates)
  #USDに変換
  amount_in_usd = amount / conversion_rates[source_currency]
  # 両替先のレートを適用
  converted_amount = amount_in_usd * conversion_rates[target_currency]
  #整数で出力
  puts converted_amount.to_i
end

conversion_rates = {
  usd: 1.0,
  jpy: 110.0,
  eur: 0.8
}

convert_currency(100, :usd, :jpy, conversion_rates)
