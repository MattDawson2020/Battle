require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :current_turn, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
    @opponent = @player_2
    @players = [@player_1, @player_2]
  end

  def attack(player)
    player.reduce
    switch_turns
  end

  def switch_turns
    @current_turn, @opponent = @opponent, @current_turn
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private
  attr_reader :players

  def losing_players
    @players.select { |player| player.hp <= 0 }
  end
end