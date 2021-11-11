feature 'adding a room' do
  scenario 'can add a room to the website' do
    visit 'spaces/new'
    
    fill_in 'new_space', with: 'Cosiest broom closet in London'
    click_button('List my Space')
    expect(page).to have_content('Cosiest broom closet in London', 'Haunted hill' )
  end
end
