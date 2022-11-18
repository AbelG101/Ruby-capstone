require_relative '../Classes/music_album'

describe MusicAlbum do
  before :each do
    @music = MusicAlbum.new('2020-03-22', true)
  end
  context 'Unit test for Music Album' do
    it 'should be instantiated' do
      expect(@music).to be_an_instance_of MusicAlbum
    end
  end

  context 'checks whether its on spotify' do
    it 'should be on spotify' do
      expect(@music.on_spotify).to be true
    end
  end

  context 'checks whether it can be archived' do
    it 'should be archived' do
      expect(@music.can_be_archived?).to be false
    end
  end
end
