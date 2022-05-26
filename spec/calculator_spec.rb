require 'calculator'

RSpec.describe InteractiveCalculator do
  it "subtracts two numbers" do
    io = double :io
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with "Here is your result:"
    expect(io).to receive(:puts).with "4 - 3 = 1"

    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end

  it "subtracts two different numbers" do
    io = double :io
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("8")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("2")
    expect(io).to receive(:puts).with "Here is your result:"
    expect(io).to receive(:puts).with "8 - 2 = 6"

    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end


end
# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1