feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      8.times { attack_and_confirm } 
    end

    scenario 'Player 1 loses' do
      click_button 'attack!'
      expect(page).to have_content 'Toby loses!'
    end
  end
end