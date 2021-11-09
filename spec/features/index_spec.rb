feature 'homepage' do
  scenario 'test page' do
    visit '/test'
    expect(page).to have_content "Code 'n Pepper"
  end
end

