require 'spaces'

describe Spaces do
  describe '.all' do
    it 'returns a list of spaces' do
      spaces = Spaces.all
      expect(spaces).to include 'Haunted hill'

    end
  end
end