def add (num1, num2)
    return num1 + num2
end

def subtract (num1, num2)
    return num1 - num2
end

def sum (arr)
    return arr.sum
end

def multiply (num1, num2)
    return num1 * num2
end

def power (num,power)
    return num**power
end

def factorial (num)
    h = 1
    (1..num).each do |n|
        h *= n
    end
    return h
end



