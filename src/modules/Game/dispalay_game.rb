module DisplayGame
  def display_game
    puts '----------------'
    if @persist_games.length.zero?
      puts 'No games yet 🕸 ,please add some games...'
    else
      puts 'Game: '
      @persist_games.each_with_index do |game, index|
        puts "#{index}) multiplayer: '#{game['multiplayer']}', last_played_at: '#{game['last_played_at']}'"
      end
    end
    puts '----------------'
  end
end
