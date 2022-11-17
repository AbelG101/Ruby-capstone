module AddMovie
    def add_movie
      print 'Movie name: '
      name = gets.chomp
      print 'Published date: '
      publish_date = gets.chomp
      print 'Movie is silent? [Y/N]'
      silent = gets.chomp.upcase
      case silent
      when 'Y'
        silent = true
      when 'N'
        silent = false
      else
        puts 'Invalid option \n'
      end
      movie = Movie.new(name, publish_date, silent)
      @movies << movie
      add_properties(movie)
      puts 'Movie Added successfully'
    end
end