def stock_picker(array)
  buy_day = 0
  sell_day = 0
  array.length.times do |i|
    if array[i - 1] == nil
      buy_day = i
    elsif (array[i] < array[buy_day]) and (array[i] != array[buy_day])
      buy_day = i
    elsif (array[sell_day] < array[i]) and (array[i] != array[sell_day])
      sell_day = i
    elsif (sell_day < buy_day) and (array[i] > array[buy_day])
      sell_day = i
    end
  end
  if sell_day < buy_day
    sell_day = "Don't sell yet."
  end
  [buy_day, sell_day]
end