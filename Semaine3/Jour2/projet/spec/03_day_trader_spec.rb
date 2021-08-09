require_relative '../lib/03_day_trader.rb'

describe  "compare method"  do
  it  "sould compare all number and return index of number of highest -delta"  do
    expect(compare([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    expect(compare([17, 8, 6, 9, 15, 8, 20, 10])).to eq([2,6])
  end

#  it "should return multiple options if there is such" do
#    expect(compare([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
#    expect(compare([17, 3, 6, 9, 15, 8, 3, 20, 10])).to eq([[1,7],[6,7]})
#  end
end

describe  "day_trader method"  do 
  it  "should give day of buy and sell"  do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq("Il faut acheter le jour 2 et vendre le jour 5 pour faire le plus de profits!")
  end
  
  it  "should return 'error' if entry is not an array"  do
    expect(day_trader("veb")).to eq("Error")
    expect(day_trader(5)).to eq("Error")
    expect(day_trader(5.5)).to eq("Error")
  end
end



