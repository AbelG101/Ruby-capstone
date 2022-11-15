require_relative './app.rb'

class Main
  def initialize
    @app = App.new
    prompt
  end

  def prompt
    loop do
      display_options
      option = take_input

      @app.run(option)

      break if option == 0
    end
  end

  def display_options
    puts "1. List all books"
    puts "2. List all music albums"
    puts "3. List all movies"
    puts "4. List all games"
    puts "5. List all genres"
    puts "6. List all labels"
    puts "7. List all authors"
    puts "8. List all sources"
    puts "9. Add a book"
    puts "10. Add a music album"
    puts "11. Add a movie"
    puts "12. Add a game"
    puts "0. Exit"
  end

  def take_input
    print 'Enter a number: '
    option = gets.chomp.to_i
    while option.nil? || option < 0 || option > 12
      puts 'Please enter a number between 1 and 7!'
      print 'Enter a number: '
      option = gets.chomp.to_i
    end
    option
  end
end

Main.new