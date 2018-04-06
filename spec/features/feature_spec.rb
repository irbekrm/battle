describe 'the landing page', type: :feature  do
  it 'has the right content' do
    visit '/'
    expect(page).to have_content('Test infrastructure working!')
  end
end
