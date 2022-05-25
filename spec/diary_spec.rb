require 'diary'

RSpec.describe Diary do

  it "constructs" do
    diary = Diary.new("Hello hello hello")
    expect(diary.read).to eq "Hello hello hello"
  end
end