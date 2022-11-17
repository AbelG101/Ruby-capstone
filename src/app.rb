require_relative './modules/Book/create_book'
require_relative './modules/Book/display_books'
require_relative './modules/Label/display_labels'
require_relative './modules/preserve_data'
require_relative './modules/load_data'
require_relative './modules/Game/dispalay_game.rb'
require_relative './modules/Author/create_author.rb'
require_relative './modules/Author/display_author.rb'
require_relative './modules/Game/persist_data.rb'

class App
  include LoadData
  include PreserveData
  include CreateBook
  include DisplayBooks
  include DisplayLabels
  include DisplayAuthor
  include DisplayGame
  include CreateGame

  def initialize
    @books = []
    @labels = []
    @authors = []
    @games = []
    load_data
    @persist_authors = load_author
    @persist_games = load_game
  end

  def run(option)
    case option
    when 1
      display_books
    when 6
      display_labels
    when 9
      create_book
    when 12
      create_game
    when 7
      display_author
    when 4
      display_game
    else
      preserve_data
      puts 'Thank you for using our app, see ya👋'
    end
  end
end
