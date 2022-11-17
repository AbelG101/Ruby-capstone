module ListMovie
  def list_movie
    puts 'List of all movie:'
    puts 'No movie recorded yet.' if @movies.empty?
    @movies.each do |movie|
      puts "movie name: #{movie.name},\nPublished date: #{movie.publish_date},\nsilent #{movie.silent}\n\n"
    end
  end
end
