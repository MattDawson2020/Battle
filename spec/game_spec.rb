require 'game'

describe Game do
  let(:player_double) { double("Player", name: "Matt", hp: 50) }
  let(:player_double_2) { double("Player", name: "Toby", hp: 50) }
  let(:subject) { Game.new(:player_double, :player_double_2) }

  let(:finished_game) { described_class.new(dead_player, player_double_2) }
  let(:dead_player) { double :player, hp: 0 }

  context '#initialize' do
    it 'has two players' do
      expect(subject.player_1).to be(:player_double)
      expect(subject.player_2).to be(:player_double_2)
    end
  end

  context '#attack' do
    it 'lets players attack each other' do
      allow(player_double_2).to receive(:reduce)
      subject.attack(player_double_2)
    end
  end

  context '#turns' do
    it 'starts as player 1' do
      expect(subject.current_turn).to eq(:player_double)
    end

    it 'switches the turns' do
      subject.switch_turns
      expect(subject.current_turn).to eq(:player_double_2)
    end
  end

  describe '#game_over?' do
    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end