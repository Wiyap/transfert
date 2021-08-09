def start_vowel(s)
    if s.start_with?(aeiouy)
        s=(s+"ay").to_s
    else
        if ((s[0] && s[1] && s[2])exclude?(aeiou))
            s=s+s[0]+s[1]+s[2]+"ay"

        elsif ((s[0] && s[1])exclude?(aeiou))
            s=s+s[0]+s[1]+"ay"
            
        elsif
         ((s[0])exclude?(aeiou))&&((s[1])include?(aeiou))
            s=s+s[0]+"ay"
        end
    end
    return s
end
