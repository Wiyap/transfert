def add(num1, num2)
return ((num1 + num2).to_i)
end

def subtract (num1, num2)
    return ((num1 - num2).to_i)
end

def sum(array)
    array.sum
end

def multiply (num1, num2)
    return (num1*num2)
end

def power (num1, num2)
    return ((num1**num2).to_i)
end

def factorial(num)
    if (num == 0 || num == 1)
        return 1
    else
        res = 1
        while (num !=1)
        res = res * num
        num -= 1
        end
        return res
    end 
end
