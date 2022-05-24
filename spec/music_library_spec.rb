require 'music_library'

RSpec.describe MusicLibrary do
  it "constructs" do
    library = MusicLibrary.new
    expect(library.all).to eq []
    expect(library.search("find")).to eq []
  end

  it "adds tracks" do
    library = MusicLibrary.new
    fake_track = double
    library.add(fake_track)
    expect(library.all).to eq [fake_track]
  end

  it "adds multiple tracks" do
    library = MusicLibrary.new
    fake_track = double
    fake_track_2 = double
    library.add(fake_track)
    library.add(fake_track_2)
    expect(library.all).to eq [fake_track, fake_track_2]
  end
end