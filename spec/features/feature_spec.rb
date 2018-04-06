describe 'the landing page', type: :feature  do
  feature 'Display players names' do 
    scenario 'User enters players names' do
      sign_in_and_play
      expect(page).to have_content 'Anna', 'Reinis'
    end
  end

  feature 'Display players hit points' do
    scenario 'User enters players names' do
      sign_in_and_play
      expect(page).to have_content '100', count: 2
    end
  end

  feature 'Updates players hit points' do
    scenario 'Player1 hits once' do
      sign_in_and_play
      click_button 'Attack!'
      expect(page).to have_content '90', '100'
    end

    scenario 'Two sequential hits' do
      sign_in_and_play
      click_button 'Attack!'
      expect(page).to have_content '90', '90'
    end
  end  

  #feature 'A player will eventually win' do
  #  scenario 'Player1 starts' do
  #  sign_in
end
