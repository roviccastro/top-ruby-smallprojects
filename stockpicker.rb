p "Stock Picker Project"

prices = [10, 4, 3, 5, 6, 4, 7, 3]

def pick_best_day(prices)
  buy_day = prices.index(prices.sort.first)
  sell_day = prices.index(prices.sort.last)

  remaining_days = prices.select {|price| prices.index(price) > buy_day ? price : next}

  if (prices[buy_day] - prices[sell_day]) < 0
    if !(remaining_days).empty?
      sell_day = prices.index(remaining_days.sort.last)

      p "Buy (#{prices[buy_day]}) at day #{buy_day} and Sell (#{prices[sell_day]}) at day #{sell_day} for a profit of #{prices[sell_day] - prices[buy_day]}"
    else
      p "Buy and Sell (#{prices[buy_day]}) at day #{buy_day} to not lose profit"
    end
  end

  return [buy_day, sell_day]
end

pick_best_day(prices)