stock_prices = [7,3,6,9,15,8,6,1,10]

def stock_picker(array)
  best_buy_sell_day = []

  if array.max != array[0]
    best_buy_sell_day.push (array.find_index(array.max))
  elsif array.min != array[-1]
    
  end
  p best_buy_sell_day
end

stock_picker(stock_prices)