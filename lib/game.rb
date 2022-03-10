class Game
attr_reader :player1, :player2, :target

def initialize(player1, player2)
@player1 = player1
@player2 = player2

@target = player2
@turn = 0
end

def target_switcher
#   @turn % 2 == 0 ? ( @target = @player1) : (@target = @player2)
@turn += 1
  @target = player2 if @turn % 2 == 0
  @target = player1 if @turn % 2 == 1

# if @target == @player2 
#     @target = @player1
# elsif @target == @player1
#     @target = @player2
# end

end

def attack
    @target.decrease_hp
    target_switcher
end

end