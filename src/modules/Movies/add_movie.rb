require_relative '../../Classes/movie'
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
    # print 'Author first name : '
    # author_first_name = gets.chomp
    # print 'Author last name : '
    # author_last_name = gets.chomp
    # print 'Label title : '
    # label_title = gets.chomp
    # print 'Label color : '
    # label_color= gets.chomp
    # print 'Genre : '
    # genre = gets.chomp
    # print 'Source name : '
    # source_name = gets.chomp
    end
    movie = Movie.new(name, publish_date, silent)
    @movies << movie
    add_properties(movie)
    puts 'Movie Added successfully'
  end
end
