require_relative '../Classes/author.rb'

describe Authors do
  context 'would test Author class file' do
    it 'should test the author class file' do
      @author = Author.new('Assumpta', 'Alena', 'Okolike')
      expect(@author.name).to eq ('Assumpta')
      expect(@author.first_name).to eq ('Alena')
      expect(@author.last_name).to eq ('Okolike')
    end
  end
end
