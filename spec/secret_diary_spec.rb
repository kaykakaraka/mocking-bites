require "secret_diary"

RSpec.describe SecretDiary do
    it "tells the user to go away when the diary is locked" do
      fake_diary = double :diary 
      secret_diary = SecretDiary.new(fake_diary)
      expect(secret_diary.read).to eq "Go away!"
     end
   
    context "secret diary is unlocked" do
      it "lets the user read the diary" do
        fake_diary = double :diary, read: "I am very happy"
        secret_diary = SecretDiary.new(fake_diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq "I am very happy"
       end
     end
   
    context "secret diary is unlocked then locked" do
      it "tells the user to go away" do
        fake_diary = double :diary, read: "I am very happy"
        secret_diary = SecretDiary.new(fake_diary)
        secret_diary.unlock
        secret_diary.lock
        expect(secret_diary.read).to eq "Go away!"
      end
    end
end