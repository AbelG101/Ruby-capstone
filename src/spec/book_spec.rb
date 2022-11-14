require './src/Classes/book'
require './src/Classes/item'

describe Book do
  before :each do
    @label = double('label')
    @book = Book.new(@label, 'Mr. Smith', 'bad', '10/10/15')
  end

  describe '#new' do
    it 'takes four parameters and returns a book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe '#add_label' do
    it 'takes a label object and assigns it to the label property' do
      expect(@book.label).to eq @label
    end
  end

  describe '#can_be_archived?' do
    it 'should return true if the cover state is bad or if its been more than 10 years since it was published' do
      expect(@book.can_be_archived?).to eq true
      @book.cover_state = 'good'
      expect(@book.can_be_archived?).to eq false
    end
  end
end