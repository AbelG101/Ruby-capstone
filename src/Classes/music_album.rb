require './src/Classes/item'
require 'date'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date: Date.today.to_s)
    super(publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end
