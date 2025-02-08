stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  hash = {}
  profit = 0
  result = []
  # loop over array and convert it in hash where price is key and index is value
  array.each_with_index do |price, index|
    hash[price] = index
  end
  # sort the hash from lowest to highest based on the price
  sorted_hash = hash.sort_by {|key, value| key}
  # loop over the sorted hash array
  for i in sorted_hash do
    # shift and pop the first and last array out of our new 2d array
    buy_day = sorted_hash.shift
    sell_day = sorted_hash.pop
    # if buy day is before sell day
    if buy_day [1] < sell_day[1]
      # find profit
      current_profit = sell_day[0] - buy_day[0]
      # if current profit is more then previous add it
      if current_profit > profit
        profit = current_profit
        # push this index of buy and sell in result we can also pop and shift here the previously added value if need 
        result.push(array.find_index(buy_day[0]))
        result.push(array.find_index(sell_day[0]))
      end
    end
  end
  p result
  puts "The profit will be #{profit}$"
end

stock_picker(stock_prices)
