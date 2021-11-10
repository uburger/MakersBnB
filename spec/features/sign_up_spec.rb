feature 'Sign up' do
  scenario 'User goes to sign-up page' do
    visit '/sign-up'

    expect(page).to have_content 'Sign-up'
  end
end
