def stock_picker(array)
  max_index = array.find_index(array.max)
  min_index = array.find_index(array.min)
  if min_index < max_index
    return [min_index, max_index]
  else
    array_1 = array[0..max_index]
    profit_1 = array.max - array_1.min

    array_2 = array[(max_index+1)..(min_index-1)]
    profit_2 = array_2.max - array_2.min

    array_3 = array[min_index..-1]
    profit_3 = array_3.max - array.min

    profit = [profit_1, profit_2, profit_3]
    profit_index = profit.find_index(profit.max)
    if profit_index == 0
      return [array.find_index(array_1.min), max_index]
    elsif profit_index == 1
      return [array.find_index(array_2.min), array.find_index(array_2.max)]
    else
      return [min_index, array.find_index(array_3.max)]
    end
  end
    
end
p stock_picker([17,3,6,9,15,8,6,1,10])