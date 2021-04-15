feature 'Enter player hit points' do
  scenario 'player 2 has hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Matt'
    fill_in :player_2_name, with: 'Toby'
    click_button 'Submit'

    # save_and_open_page
    
    expect(page).to have_content 'HP:50'
  end
end