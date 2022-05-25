require 'music_library'

RSpec.describe MusicLibrary do
  it "constructs" do
    library = MusicLibrary.new
    expect(library.all).to eq []
    expect(library.search("find")).to eq []
  end

  it "adds tracks" do
    library = MusicLibrary.new
    fake_track = double :track
    library.add(fake_track)
    expect(library.all).to eq [fake_track]
  end

  it "adds multiple tracks" do
    library = MusicLibrary.new
    fake_track = double :track
    fake_track_2 = double :track
    library.add(fake_track)
    library.add(fake_track_2)
    expect(library.all).to eq [fake_track, fake_track_2]
  end

  it "searches for the keyword" do
    library = MusicLibrary.new
    fake_track = double :track
    expect(fake_track).to receive(:matches?).with("two").and_return (true)
    fake_track_2 = double :track
    expect(fake_track_2).to receive(:matches?).with("two").and_return (false)
    library.add(fake_track)
    library.add(fake_track_2)
    expect(library.search("two")).to eq [fake_track]
  end
end