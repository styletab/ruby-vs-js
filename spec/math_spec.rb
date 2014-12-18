require 'math'

RSpec.describe "#add" do
  it "sums two numbers" do
    expect(add(2, 2)).to eq(4)
    expect(add(10, 2)).to eq(12)
    expect(add(-10, 10)).to eq(0)
  end
end
