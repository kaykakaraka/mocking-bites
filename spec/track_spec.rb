require 'track'

RSpec.describe Track do
  it "constructs" do
    track_1 = Track.new("Sugar", "The Babe")
    expect(track_1.matches?("Sugar")).to eq true
    expect(track_1.matches?("The Babe")).to eq true
  end

  it "returns false when tracks don't have the keyword" do
    track_1 = Track.new("Sugar", "The Babe")
    expect(track_1.matches?("Unbelievable")).to eq false
  end
end

