class Player 
  attr_reader :name, :hp

  ::DEFAULT_HP = 50

    def initialize(name)
      @name = name
      @hp = DEFAULT_HP
    end

    def attack(player)
      player.reduce
    end

    def reduce
      @hp -= 10
    end
end