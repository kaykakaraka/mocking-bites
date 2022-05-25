class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @locked = true
  end

  def read
    return "Go away!" if @locked 
    return @diary.read if @locked == false
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end