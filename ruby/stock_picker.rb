def stock_picker(days)
  i, buy_i, sell_i = 0, 0, 1
  while i < days.length do
    j = i + 1
    while j < days.length do
      if days[j] - days[i] > days[sell_i] - days[buy_i] then
        buy_i = i
        sell_i = j
      end
      j += 1
    end
    i += 1 
  end
  return [buy_i, sell_i]
end

print(stock_picker([17,3,6,9,15,8,6,1,10]))