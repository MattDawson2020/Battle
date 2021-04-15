require 'player'

describe Player do
  let(:subject) { Player.new("jeff")}

  it 'can respond to name' do
    expect(subject).to respond_to(:name)
  end

  it 'can return its own' do
    expect(subject.name).to eq("jeff")
  end

end