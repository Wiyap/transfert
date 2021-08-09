def echo (word)
    return word
end

def shout (word)
    return word.upcase
end

def repeat (word,num=2)
    return "#{word}" + " #{word}"*(num-1)
end

def start_of_word (strg,num)
    return strg[0..(num-1)]
end

def first_word (strg)
    return strg.split.first
end

def titleize (strg)
    h = strg.split(" ").map{|e| e.length > 3 ? e.capitalize : e}
    h[0] = h[0].capitalize
    h = h.join(" ")
end


