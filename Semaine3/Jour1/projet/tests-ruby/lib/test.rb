def translate(s)
    h = -1
    arr = s.split(" ")
    arr.each do |n|
    h += 1
    while n[0].match?(/([aeiou])/) == false
        if n[0..1] == "qu"
        n = n + n[0..1]
        n.slice!(0..1)
        arr[h] = n
        else
        n = n + n[0]
        n.slice!(0)
        arr[h] = n
        end
    end
    n = n + "ay"
    arr[h] = n
    end
    puts arr.join(" ")
end

a = "the quick brown fox"

translate(a)