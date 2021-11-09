require 'room'

describe Room do
  describe '.new' do
    it 'adds a new space' do
      new_room = Room.new(new_space: 'Cosiest broom closet in London')
      expect(new_room).to include 'Cosiest broom closet in London'
    end
  end
end
