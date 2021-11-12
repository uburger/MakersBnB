require 'room'

describe '.all' do
  it 'returns a list of spaces' do
    spaces = Room.all
    expect(spaces).to include 'Haunted hill'
  end
end
