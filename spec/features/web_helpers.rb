def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Anna'
  fill_in 'player2', with: 'Reinis'
  click_button 'Submit'
end
