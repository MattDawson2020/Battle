# require_relative 'web_helpers'

feature 'Enter player hit points' do
  scenario 'player 2 has hit points' do
    sign_in_and_play
    # save_and_open_page
    
    expect(page).to have_content 'HP:50'
  end
end