feature 'list space' do
  scenario 'Viewing a list of spaces' do
    visit '/spaces/new'
    expect(page).to have_content 'List a space'
  end
end
