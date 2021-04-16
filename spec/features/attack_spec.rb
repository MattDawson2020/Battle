feature 'Attacking' do
  scenario 'player 1 attacks Player 2' do
    sign_in_and_play
    click_button('attack!')

    expect(page).to have_content("attacked")
  end

  scenario 'attacks can remove hp' do
    sign_in_and_play
    click_button('attack!')

    expect(page).to have_content("Toby's HP is reduced to 40!")
  end
end
