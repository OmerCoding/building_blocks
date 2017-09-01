def stock_picker(array)
  buy = 0
  max_profit = 0
  buy_sell = [0,0]
  while buy < array.length
    sell = buy + 1
    while sell < array.length
      profit = (array[sell] - array[buy])
      if profit > max_profit
        max_profit = profit
        buy_sell[0] = buy
        buy_sell[1] = sell
      end
      sell += 1
    end
    buy += 1
  end
  if max_profit > 0
    puts "You should buy at day " + buy_sell[0].to_s + " And you should sell at day " + buy_sell[1].to_s
  else
    puts "Don't buy this stock!"
  end
end

array_days = []
val = ""
day = 0
while val != -1
  print "Enter value of day " + day.to_s + " (-1 to pause): "
  val = gets.to_i
  array_days.push(val.to_i)
  day += 1
end

stock_picker(array_days)
