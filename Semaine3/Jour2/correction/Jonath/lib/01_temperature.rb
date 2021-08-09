#def ftoc(fahrenheit_degrees)
#    celsius = (fahrenheit_degrees.to_i - 32) * 5.0 / 9.0
#    celsius.round
#end
  
def ctof(celsius_degrees)
  fahrenheit = (celsius_degrees * 1.8) + 32
  fahrenheit.round(1)
end

def ftoc(f)
  return ((f - 32) / 1.8).round
end