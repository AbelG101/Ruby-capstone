require_relative './modules/Book/create_book'
require_relative './modules/Book/display_books'
require_relative './modules/Label/display_labels'
require_relative './modules/preserve_data'
require_relative './modules/load_data'

class App
  include LoadData
  include PreserveData
  include CreateBook
  include DisplayBooks
  include DisplayLabels

  def initialize
    @books = []
    @labels = []
    load_data
  end

  def run(option)
    case option
    when 1
      display_books
    when 6
      display_labels
    when 9
      create_book
    else
      preserve_data
      puts 'Thank you for using our app, see ya👋'
    end
  end
end
