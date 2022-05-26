class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Please enter a number"
    first_no = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    second_no = @io.gets.chomp.to_i
    answer = first_no - second_no
    @io.puts "Here is your result:"
    @io.puts "#{first_no} - #{second_no} = #{answer}"
  end
end









interactive_calculator = InteractiveCalculator.new(Kernel)
p interactive_calculator.run
