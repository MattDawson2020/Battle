require 'game'

describe Game do
  let(:player_double) { double("Player", name: "Abdur", hp: 50) }
  let(:player_double_2) { double("Player", name: "Trump", hp: 50) }
  let(:subject) { Game.new(:player_double, :player_double_2) }

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
end