require_relative '../../Classes/game'
require_relative '../../Classes/author'
require_relative '../Game/persist_data.rb'

module CreateGame
  def persist_data(file_path, data)
    persist_data = PersistData.new(file_path)
    persist_data.save(data)
  end

  def load_author
    persist_data = PersistData.new('./src/Store/author.json')
    persist_data.load
  end

  def load_game
    persist_data = PersistData.new('./src/Store/game.json')
    persist_data.load
  end

  def create_game
    print 'last_played_at: '
    last_played_at = gets.chomp
    print 'multiplayer: '
    multiplayer = gets.chomp
    print 'publish_date(yyyy-mm-dd): '
    publish_date = gets.chomp

    puts 'Give it an Author:'
    print 'Name: '
    name = gets.chomp
    print 'First_Name: '
    first_name = gets.chomp
    print 'Last_name:'
    last_name = gets.chomp
    author = Author.new(name, first_name, last_name)

    game = Game.new(multiplayer, last_played_at, publish_date)
    author.add_item(game)

    @authors << author
    @games << game

    author_arr = load_author
    game_arr = load_game

    @authors.each do |author|
      author_arr << { name: author.name, first_name: author.first_name, last_name: author.last_name }
    end

    persist_data('./src/Store/author.json', author_arr)

    @games.each do |game|
      game_arr << { multiplayer: game.multiplayer, last_played_at: game.last_played_at }
    end

    persist_data('./src/Store/game.json', game_arr)
    puts 'Game created successfully'
  end
end
