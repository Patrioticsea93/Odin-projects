def stock_picker(prices)
  best_days = [0, 0]
  best_profit = 0
  lowest_price = prices[0]
  lowest_day = 0

  prices.each_with_index do |price, day|
    profit = price - lowest_price

    if profit > best_profit
      best_profit = profit
      best_days = [lowest_day, day]
    end

    if price < lowest_price
      lowest_price = price
      lowest_day = day
    end
  end

  best_days
end
