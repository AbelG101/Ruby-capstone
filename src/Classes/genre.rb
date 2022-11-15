class Genre
  attr_accessor :id, :name, :items
  
  def initialize(_id, name)
    @id = Random.rand(1..499)
    @name = name
    @items = []
  end

  def add_item(item)

  end
end  