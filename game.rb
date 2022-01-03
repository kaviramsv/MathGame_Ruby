require './player.rb'
require './questions.rb'

class Game
  def initialize(p1,p2)
    @p1=p1
    @p2=p2
    @ct=@p1
  end
  def play
    no = 1
    game_on  =true    
    q1=Questions.new    
    while game_on
      puts "Questn No: #{no}"
      if no%2==1    
        @ct=@p1
      else
        @ct=@p2
      end 

      puts "#{@ct.name}"
      if q1.generate        
        @ct.increment_score
        # puts "#{@ct.name} has a #{@ct.score} and #{@ct.turns} left"
          
      else
        @ct.decrement_turns
        # puts "#{@ct.name} has a #{@ct.score} and #{@ct.turns} left"
        if @ct.turns<1
          game_on=false
          puts "Game Over"          
          puts "#{@p1.name} has a #{@p1.score} and #{@p1.turns} left"
          puts "#{@p2.name} has a #{@p2.score} and #{@p2.turns} left"
          if @p1.score>@p2.score
            puts "Winner is #{@p1.name}"
          else
            puts "Winner is #{@p2.name}"          
          end
          exit
        end
      end 
      puts "#----------------------------------------------------------#"
      puts "#{@p1.name}   Score:#{@p1.score}     Turns left:#{@p1.turns}"
      puts "#----------------------------------------------------------#"
      puts "#{@p2.name}   Score:#{@p2.score}     Turns left:#{@p2.turns}"
      puts "#----------------------------------------------------------#"
      no+=1
      
      
      
    end
  end
end