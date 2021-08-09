def who_is_bigger (a, b, c)
    comp = [a, b, c]
    h = 0
    i = 0
    if a == nil || b == nil || c == nil
        h = "nil detected"
    else
        comp.each do |n|
            if n >= h
                h = n
                i = comp.index(n)
            end
        end
        if i == 0
            return "a is bigger"
        elsif i == 1
            return "b is bigger"
        elsif i == 2
            return "c is bigger"
        end
    end
end

def reverse_upcase_noLTA (string)
    return string.reverse.upcase.gsub(/([LTA])/, "")
end

def array_42 (arr)
    h = 0
    arr.each do |n|
        if n == 42
        h = 1
        end
    end
    return h == 1
end

def magic_array (arr)
    arr.flatten.sort.map{|i| i*2}.delete_if{|arr| (arr%3) == 0 && arr>2}.uniq
end