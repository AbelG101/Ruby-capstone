require './src/Classes/source'
describe Source do
  before :each do
    @source = Source.new('a friend')
  end

  context 'When creating @source. an instance of class source' do
    it 'should take parameters and return source object' do
      @source.should be_an_instance_of Source
    end
  end

  context 'When retrieving the name of a source' do
    it 'should return the source name' do
      expect(@source.name).to eq('a friend')
    end
  end

  context 'add_item' do
    it ' should takes an item object and adds it to the collection of items' do
      item = double('item')
      allow(item).to receive(:source=)
      source = Source.new('a friend')
      source.add_item(item)
      expect(source.items.length).to eq 1
    end
  end
end
