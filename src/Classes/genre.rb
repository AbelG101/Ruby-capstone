class Genre
  attr_accessor :id, :name, :items

  def initialize(name, _id: Random.rand(1..499))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    # items.add_genre(self)
  end
end
