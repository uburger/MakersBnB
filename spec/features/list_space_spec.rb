feature 'list space' do
  scenario 'Viewing a list of spaces' do
    visit '/list-spaces'
    expect(page).to have_content 'List a space'
  end
end
