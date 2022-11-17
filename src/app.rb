require_relative './modules/Book/create_book'
require_relative './modules/Book/display_books'
require_relative './modules/Genre/display_genres'
require_relative './modules/MusicAlbum/create_music_album'
require_relative './modules/MusicAlbum/display_music_albums'
require_relative './modules/Label/display_labels'
require_relative './modules/Movies/add_movie'
require_relative './modules/Movies/list_movie'
require_relative './modules/Source/list_source'
require_relative './modules/preserve_data'
require_relative './modules/load_data'
require_relative './modules/Game/dispalay_game'
require_relative './modules/Author/create_author'
require_relative './modules/Author/display_author'
require_relative './modules/Game/persist_data'

class App
  include LoadData
  include PreserveData
  include CreateBook
  include DisplayBooks
  include DisplayLabels

  include DisplayGenres
  include CreateMusicAlbum
  include DisplayMusicAlbums

  include DisplayAuthor
  include DisplayGame
  include CreateGame
  include AddMovie
  include ListMovie
  include ListSource

  def initialize
    @books = []
    @labels = []
    @albums = []
    @genres = []
    @authors = []
    @games = []
    @movies = []
    @sources = []
    load_data
    @persist_authors = load_author
    @persist_games = load_game
  end

  def run(option)
    case option
    when 1
      display_books
    when 2
      display_music_albums
    when 5
      display_genres
    when 3
      list_movie
    when 6
      display_labels
    when 8
      list_source
    when 9
      create_book
    when 10
      create_music_album
    when 12
      create_game
    when 7
      display_author
    when 4
      display_game
    when 11
      add_movie
    else
      preserve_data
      puts 'Thank you for using our app, see ya👋'
    end
  end
end
