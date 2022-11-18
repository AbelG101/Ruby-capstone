require './src/Classes/movie'
require './src/Classes/source'

describe Movie do
  before :each do
    @source = Source.new('Novel')
    @movie = Movie.new(@source, '2019-07-09', true)
  end

  context 'When creating @movie. an instance of class movie' do
    it 'should take parameters and return source object' do
      @movie.should be_an_instance_of Movie
    end
  end

  context 'When retrieving the source of a movie' do
    it 'should return the correct source name' do
      expect(@movie.source.name).to eq('Novel')
    end
  end

  context 'When checking the published date' do
    it 'it should return a published date' do
      expect(@movie.publish_date.year).to eq(2019)
      expect(@movie.publish_date.month).to eq(7)
      expect(@movie.publish_date.day).to eq(9)
    end
  end

  context '' do
    it 'should return true if parents method returns true OR if silent equals true' do
      expect(@movie.can_be_archived?).to eq(true)
    end
  end
end
