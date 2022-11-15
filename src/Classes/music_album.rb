require './src/Classes/item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(id, name, publish_date, archived: false, on_spotify: false)
    super(id, name, publish_date, archived)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end