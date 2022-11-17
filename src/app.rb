require_relative './modules/Book/create_book'
require_relative './modules/Book/display_books'
require_relative './modules/Genre/display_genres'
require_relative './modules/MusicAlbum/create_music_album'
require_relative './modules/MusicAlbum/display_music_albums'
require_relative './modules/Label/display_labels'
require_relative './modules/preserve_data'
require_relative './modules/load_data'

class App
  include LoadData
  include PreserveData
  include CreateBook
  include DisplayBooks
  include DisplayLabels
  include DisplayGenres
  include CreateMusicAlbum
  include DisplayMusicAlbums

  def initialize
    @books = []
    @labels = []
    @albums = []
    @genres = []
    load_data
  end

  def run(option)
    case option
    when 1
      display_books
    when 2
      display_music_albums
    when 5
      display_genres
    when 6
      display_labels
    when 9
      create_book
    when 10
      create_music_album
    else
      preserve_data
      puts 'Thank you for using our app, see ya👋'
    end
  end
end
