require 'music_library'
require 'track'

RSpec.describe "integration" do
  xit "shows tracks added to the library" do
    library = MusicLibrary.new
    track_1 = Track.new("Sugar", "The Babe")
    track_2 = Track.new("We Will Rock You", "Queen")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  xit "finds track by keyword" do
    library = MusicLibrary.new
    track_1 = Track.new("Sugar", "The Babe")
    track_2 = Track.new("We Will Rock You", "Queen")
    library.add(track_1)
    library.add(track_2)
    expect(library.search("rock")).to eq [track_2]
  end

  xit "find multiple tracks by keyword" do
    library = MusicLibrary.new
    track_1 = Track.new("Sugar", "The Babe")
    track_2 = Track.new("We Will Rock You", "Queen")
    track_3 = Track.new("This is it!", "The Rock Stars")
    track_4 = Track.new("Hiding Under a Rock..", "Recluses")
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    library.add(track_4)
    expect(library.search("rock")).to eq [track_2, track_3, track_4]
  end
end