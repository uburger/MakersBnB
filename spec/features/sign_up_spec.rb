feature 'Sign up' do
  scenario 'User goes to sign-up page' do
    visit '/sign-up'

    expect(page).to have_content 'Sign-up'
  end

  scenario 'User enters details and submits them' do
    visit 'sign-up'
    fill_in('name', with: 'Jane Doe')
    fill_in('password', with: 'password')
    click_button 'Submit'

    expect(page).to have_content 'Jane Doe'
    expect(page).to have_content 'password'
  end
end