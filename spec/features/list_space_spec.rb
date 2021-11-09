feature 'list space' do
  scenario 'Viewing a list of spaces' do
    visit '/spaces'
    expect(page).to have_content 'List your space!'
  end
end
