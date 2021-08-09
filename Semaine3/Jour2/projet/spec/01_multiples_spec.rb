require_relative '../lib/01_multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "schould return FALSE if integer is NOT a mutiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(13)).to eq(false)
    expect(is_multiple_of_3_or_5?(46)).to eq(false)
    expect(is_multiple_of_3_or_5?(113)).to eq(false)
  end
end

describe "the sum_of_3_and_5_multiples(n)" do
  it "should return an integer equal to the sum of 3 and 5 multiple of source number" do
    expect(sum_of_3_and_5_multiples(10)).to eq(23)
    expect(sum_of_3_and_5_multiples(11)).to eq(33)
    expect(sum_of_3_and_5_multiples(0)).to eq(0)
    expect(sum_of_3_and_5_multiples(3)).to eq(0)
  end

  it "should return Error if entry is not a positiv integer" do
    expect(sum_of_3_and_5_multiples(-1)).to eq("Error")
    expect(sum_of_3_and_5_multiples(1.254)).to eq("Error")
    expect(sum_of_3_and_5_multiples("vibp")).to eq("Error")
  end
end