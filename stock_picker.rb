stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  hash = {}
  array.each_with_index do |price, index|
    hash[price] = index
  end
  sorted_hash = hash.sort_by {|key, value| key}
  p hash
  p sorted_hash
  profit = 0
  for i in sorted_hash do
    buy_day = sorted_hash.shift
    sell_day = sorted_hash.pop
    if buy_day [1] < sell_day[1]
      current_profit = sell_day[0] - buy_day[0]
      if current_profit > profit
        profit = current_profit
      end
    end
  end
  p profit
end

stock_picker(stock_prices)
  # p sorted_hash[0][0] - sorted_hash[-1][0]

# best_buy_sell_day = []

#   # first buy
#   best_buy_sell_day.push (array.find_index(array.min))

#   # now sell
#   best_buy_sell_day.push (array.find_index(array.max))
#   p best_buy_sell_day

