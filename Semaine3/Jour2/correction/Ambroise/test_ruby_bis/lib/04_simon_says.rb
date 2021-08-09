def echo(string)
    return string
end



def shout(string)
    return string.upcase
end



def repeat (string, n=2)
  return [string] * n * ' '
end



def start_of_word (string, i=1)
    return string[0..(i-1)]
end



def first_word (string)
    return string.split.first
end



def titleize(string)
    
  for i 
    if ((i.length)>3) ; i.first.upcase 
        return string
    end
end


