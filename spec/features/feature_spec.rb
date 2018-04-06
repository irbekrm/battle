describe 'the landing page', type: :feature  do
  feature 'Display players names' do 
    scenario 'User enters players names' do
      visit '/'
      fill_in 'player1', with: 'Anna'
      fill_in 'player2', with: 'Reinis'
      click_button 'Submit'
      expect(page).to have_content 'Anna', 'Reinis'
    end
  end
end
