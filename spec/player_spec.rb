require 'player'

describe Player do
  let(:subject) { Player.new("jeff") }
  # let(:player_2) { Player.new("dave") }

  context '#initialize' do
    it 'can respond to name' do
      expect(subject).to respond_to(:name)
    end
  
    it 'can return its own name' do
      expect(subject.name).to eq("jeff")
    end

    it 'has a default hp' do
      expect(subject.hp).to eq(::DEFAULT_HP)
    end
  end

  context '#reduce' do
    it 'can remove target players hp' do
      expect { subject.reduce }.to change { subject.hp }.by(-10)
    end

    it 'can be used repeatedly' do
      expect { 3.times { subject.reduce } }.to change { subject.hp }.by(-30)
    end
  end


 
end