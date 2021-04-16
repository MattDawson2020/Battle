require_relative 'web_helpers'

  feature 'Enter player names' do
    scenario 'submitting player names' do
      sign_in_and_play
      # save_and_open_page
      
      expect(page).to have_content 'Matt HP:50 vs. Toby HP:50'
    end
  end
  
