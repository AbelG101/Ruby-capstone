require './src/Classes/label'

describe Label do
  before :each do
    @label = Label.new('something', 'red')
  end

  describe '#new' do
    it 'takes two parameters and returns a label object' do
      expect(@label).to be_an_instance_of Label;
    end
  end

  describe '#add_item' do
    it 'takes an item object and adds it to the collection of items' do
      item = double('item')
      allow(item).to receive(:label=)
      label = Label.new('something', 'red')
      label.add_item(item)
      label.add_item(item)
      expect(label.items.length).to eq 2
    end
  end
end