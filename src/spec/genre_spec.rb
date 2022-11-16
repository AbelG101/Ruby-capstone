require_relative '../Classes/genre'

describe Genre do
  context 'Unit tests for Genre Class' do
    it 'should create a new genre when the class is instantiated' do
      genre = Genre.new(21,'Blues')
      genre.add_item({one: 1, two: 2})
      expect(genre.name).to eq('Blues')
      expect(genre.items.length).to eq(1)
    end
  end
end