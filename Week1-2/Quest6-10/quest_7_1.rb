# each_with_indexでIDと名前を順番に表示
def print_names(names)
  names.each_with_index do |name, index|
    puts "#{index + 1}. #{name}"
  end
end
print_names(['上田', '田仲', '堀田'])
