module DisplayGenres
  def display_genres
    puts '----------------'
    if @genres.length.zero?
      puts 'No genres yet 🕸 ,please add some genres...'
    else
      puts 'Genres: '
      @genres.each_with_index do |genre, index|
        puts "#{index+1}) name: #{genre.name}"
      end
    end
    puts '----------------'
  end
end
