feature 'booking' do
  scenario 'book a room' do
    visit '/booking'
    fill_in :select, with: 'Penthouse'
    click_button 'book a room'
    
    expect(page).to have_content 'Penthouse'
  end
end
