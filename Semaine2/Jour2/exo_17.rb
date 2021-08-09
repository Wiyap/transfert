puts "Enter a number:"
number = gets.chomp.to_i
if number <= 25 && 
    number.times do |i| 
        print " " * (number-(i+1))
        puts "#" * (1+(2*i))
    end
else
    puts "Error: Number is to high. Number must be =<25 !"
end
