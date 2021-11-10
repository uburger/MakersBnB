feature 'Sign in' do
  scenario 'User visits sign-in page' do
    visit '/sign-in'

    expect(page).to have_content 'Email'
    expect(page).to have_content 'Password'
    expect(page).to have_content 'Log in'
  end
end
