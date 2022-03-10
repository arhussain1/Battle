class Player
    attr_reader :hp, :name
def initialize(name)
    @name = name
    @hp = 100
    @attack_value = 10
end
    
def attack(target)
    target.decrease_hp
end


def decrease_hp
  @hp -= @attack_value
end

end