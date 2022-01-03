class Questions

  def generate
    @no_1= rand(1..10)
    @no_2= rand(1..10)
    
    answer= @no_1 +  @no_2
    puts "What is #{@no_1} plus #{@no_2}"
    ip_ans= gets.chomp
    if answer == ip_ans.to_i
      true
    else
      false
    end
  end
end

