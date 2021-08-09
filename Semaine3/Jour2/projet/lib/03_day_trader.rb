def compare(arr)
  h = 0
  a = 0
  day = []
  arr.each_with_index do |n,idx|
    ((arr.length)-(idx+1)).times do |i|
      h = arr[idx+i+1] - n
      if h > a
        a = h
        day = [idx,(idx+i+1)]
      end
    end
  end
  return day
end

def day_trader (arr)
  if arr.is_a? Array
    day = compare(arr)
    return "Il faut acheter le jour #{day[0]+1} et vendre le jour #{day[1]+1} pour faire le plus de profits!"
  else
    return "Error"
  end
end

crypto = [17, 10, 6, 9, 5, 8, 6, 100, 10]

puts day_trader(crypto)


