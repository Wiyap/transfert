def is_multiple_of_3_or_5?(num)
  if num%3 == 0 || num%5 == 0 
    return true
  else
    return false
  end
end

def sum_of_3_and_5_multiples(final_number)
  sum = 0
  if final_number.class == 1.class && final_number >= 0
    1..final_number.times do |i|
      if is_multiple_of_3_or_5?(i) == true
        sum += i
      end
    end
    return sum
  else
    return "Error"
  end
end

puts sum_of_3_and_5_multiples(10)