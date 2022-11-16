require_relative '../../Classes/MusicAlbum'
require_relative '../../Classes/Genre'

module CreateMusicAlbum
  def create_music_album
    print 'Publisher: '
    publisher = gets.chomp
    print 'cover_state: '
    cover_state = gets.chomp
    print 'publish_date(yyyy-mm-dd): '
    publish_date = gets.chomp

    puts 'Give it some label:'
    print 'Title: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    label = Label.new(title, color)

    book = Book.new(label, publisher, cover_state, publish_date)
    label.add_item(book)

    @labels << label
    @books << book
  end
end