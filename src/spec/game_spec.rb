require_relative '../Classes/game'

describe Games do
  context 'would test Game class file' do
    it 'should test the game class file' do
      @game = Game.new(true, '2022-11-10', '2022-11-09')
      expect(@game.multiplayer).to eql(true)
      expect(@game.last_played_at.year).to eql(2022)
    end
  end
end
