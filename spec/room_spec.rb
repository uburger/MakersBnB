require 'room'

describe Room do
  describe '.add' do
    it 'adds a new space' do
      new_room = Room.add(new_space: 'Cosiest broom closet in London')
      expect(new_room).to include 'Cosiest broom closet in London'
    end
  end

  describe '.all' do
    it 'returns a list of spaces' do
      spaces = Room.all
      expect(spaces).to include 'Haunted hill'
    end
  end
end
