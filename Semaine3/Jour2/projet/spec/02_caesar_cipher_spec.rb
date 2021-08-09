require_relative '../lib/02_caesar_cipher.rb'

describe "letter_shift method" do
  it "should shift source letter into an other letter based on shift number" do
    expect(letter_shift("h",2)).to eq("j")
    expect(letter_shift("z",4)).to eq("d")
    expect(letter_shift("w",0)).to eq("w")
    expect(letter_shift("y", 26)).to eq("y")
  end

  it "should return a letter in upcase if is was in upcase" do
  expect(letter_shift("H",2)).to eq("J")
  expect(letter_shift("Z",4)).to eq("D")
  expect(letter_shift("W",0)).to eq("W")
  end
end

describe "caesar_cipher method" do
  it "should shift a entire string by shift_num" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "should return error if key is not a string" do
    expect(caesar_cipher(["fzev"], 5)).to eq("Error")
    expect(caesar_cipher(5, 5)).to eq("Error")
  end

  it "should return error if shift_num is not a integer or >26" do
    expect(caesar_cipher("w", "w")).to eq("Error")
    expect(caesar_cipher("w", [5])).to eq("Error")
    expect(caesar_cipher("w", 5.5)).to eq("Error")
    expect(caesar_cipher("w", 27)).to eq("Error")
  end
end








