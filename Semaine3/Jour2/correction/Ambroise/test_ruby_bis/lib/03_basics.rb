def who_is_bigger(a, b, c)
    
    if ((a == nil) || (b==nil) || (c==nil))
        return "nil detected"
    elsif (a>b)&&(a>c)
        return "a is bigger"

    elsif (b>a)&&(b>c)
        return "b is bigger"

    elsif (c>a)&&(c>b)
        return "c is bigger" 
    end
end


def reverse_upcase_noLTA(string)
    string = string.delete'L'
    string = string.delete'T'
    string = string.delete'A'
    return string.reverse.upcase
end



def array_42(array_42)
    return array_42.include?('42')
end


def magic_array(array)
    array=array.flatten
    array=array.sort_by_integer
    array.each do |i|
        i = i*2 ;
        if ((i%3)==0)
            array.delete(i)
        elsif
         (array.count(i)>1) 
            array.delete(i)
        end
        array=array.sort
    end
    return array
end