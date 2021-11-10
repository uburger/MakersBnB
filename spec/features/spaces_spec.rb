feature 'booking' do
  scenario 'book a room' do
    visit '/spaces'
    fill_in :select, with: 'Penthouse'
    click_button 'book this room'
    
    expect(page).to have_content 'Penthouse'
  end
end
