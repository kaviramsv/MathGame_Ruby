class  Player
  attr_accessor :score,:turns,:name
  def initialize(name)
    @name=name
    @score=0
    @turns=3
  end 
  def decrement_turns
    @turns-=1
  end
  def increment_score
    @score+=1
  end
end