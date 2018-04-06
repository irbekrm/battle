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
end
