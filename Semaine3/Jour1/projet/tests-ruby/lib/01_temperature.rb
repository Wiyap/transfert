def ftoc (temp)
    t = (temp-32)/(1.8)
    return t.round(1)
end

def ctof (temp)
    t = (temp*(1.8))+32
    return t.round(1)
end

ftoc (212)

ctof (100)
