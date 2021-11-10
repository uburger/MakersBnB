feature 'Sign up' do
  scenario 'User goes to sign-up page' do
    visit '/sign-up'

    expect(page).to have_content 'Sign-up'
  end

  scenario 'User enters details and submits them' do
    visit 'sign-up'
    fill_in('email', with: 'example@example.com')
    fill_in('password', with: 'password')
    click_button 'Submit'

    expect(page).to have_content 'example@example.com'
    expect(page).to have_content 'password'
  end
end
