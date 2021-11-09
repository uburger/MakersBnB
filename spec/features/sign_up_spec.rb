feature 'Sign up' do
  scenario 'User signs up to the website' do
    visit '/sign-up'

    expect(page).to have_content 'Sign-up'
  end
end