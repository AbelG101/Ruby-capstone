require_relative './modules/Book/create_book'
require_relative './modules/Book/display_books'
require_relative './modules/Label/display_labels'
require_relative './modules/Book/add_movie'
require_relative './modules/Book/list_movie'
require_relative './modules/preserve_data'
require_relative './modules/load_data'

class App
  include LoadData
  include PreserveData
  include CreateBook
  include DisplayBooks
  include DisplayLabels
  include AddMovie
  include ListMovie

  def initialize
    @books = []
    @labels = []
    @movies = []
    load_data
  end

  def run(option)
    case option
    when 1
      display_books
    when 3
      list_movie
    when 6
      display_labels
    when 9
      create_book
    when 11
      add_movie
    else
      preserve_data
      puts 'Thank you for using our app, see ya👋'
    end
  end
end
