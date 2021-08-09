def letter_shift (lett, shift_num)
  a = lett.ord
  if a.between?(65,90)
    a += shift_num
    if a > 90
      a -= 26
    end
  elsif a.between?(97,122)
    a += shift_num
    if a > 122
      a -= 26
    end      
  end
  return a.chr
end

def caesar_cipher(key,shift_num)
  if key.class == "string".class && shift_num.class == 5.class && shift_num.between?(0,26)
    (key.length).times do |i|
      key[i] = letter_shift(key[i],shift_num)
    end
    return key
  else
    return "Error"
  end
end 
    
puts caesar_cipher("Louis la pute! z ", 2)
