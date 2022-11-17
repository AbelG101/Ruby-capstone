require './src/Classes/genre'

describe Genre do
  before :each do
    @genre = Genre.new('Blues')
  end

  context 'checks if its properly instantiated' do
    it 'should create a new genre when the class is instantiated' do
      expect(@genre).to be_an_instance_of Genre
    end
  end

  context '#add_item' do
    it 'takes an item object and adds it to the collection of items' do
      item = double('item')
      allow(item).to receive(:genre=)
      genre = Genre.new('Trap')
      genre.add_item(item)
      expect(genre.items.length).to eq 1
    end
  end
end
