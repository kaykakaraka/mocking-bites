require 'secret_diary'
require 'diary'

RSpec.describe "diary integration" do
  it "tells the user to go away when the diary is locked" do
    diary = Diary.new("I am very happy")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq "Go away!"
  end

  context "secret diary is unlocked" do
    it "lets the user read the diary" do
      diary = Diary.new("I am very happy")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "I am very happy"
    end
  end

  context "secret diary is unlocked then locked" do
    it "tells the user to go away" do
      diary = Diary.new("I am very happy")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect(secret_diary.read).to eq "Go away!"
    end
  end
end

=begin
1. user can read the diary
2. diary is passed to secret diary - user is told to go away when they
try to read the diary
3. diary is passed to secret diary and unlocked - user can read the 
diary
4. diary is passed to secret diary, unlocked and then locked - user 
is told to go away
=end