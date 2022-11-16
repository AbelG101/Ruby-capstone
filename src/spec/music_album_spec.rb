require_relative '../Classes/music_album'

describe MusicAlbum do
  context 'Unit test for Music Album' do
    it 'should create a new music album when the class is instantiated' do
      music = MusicAlbum.new(true, '2020-03-22')
      expect(music.on_spotify).to be true
    end
  end
end
