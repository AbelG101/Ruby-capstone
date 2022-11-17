require_relative '../Classes/label'
require_relative '../Classes/book'

module LoadData
  LABELS_FILE_NAME = 'src/Store/labels.json'.freeze
  BOOKS_FILE_NAME = 'src/Store/books.json'.freeze

  def load_data
    load_books
    load_labels
  end

  def load_books
    books_hash = []
    return books_hash unless File.exist?(BOOKS_FILE_NAME)

    books_hash = load_data_from_file(BOOKS_FILE_NAME)
    books_hash.each do |book|
      label = Label.new(book['label']['title'], book['label']['color'])
      @books << Book.new(label, book['publisher'], book['cover_state'], book['publish_date'])
    end
  end

  def load_labels
    labels_hash = []
    return labels_hash unless File.exist?(LABELS_FILE_NAME)

    labels_hash = load_data_from_file(LABELS_FILE_NAME)
    @labels = labels_hash.map do |label|
      Label.new(label['title'], label['color'])
    end
  end

  def load_movies
    movie_file = File.exist?('./json/movies.json') ? File.read('./json/movies.json') : '[]'
    movie_h = JSON.parse(movie_file)
    movie_h.each do |movie|
      movie_new = Movie.new(movie['name'], movie['publish_date'], movie['silent'])
      load_properties(movie, movie_new)
      @movies << movie_new
    end
  end

  def load_data_from_file(file_name)
    file = File.read(file_name)
    JSON.parse(file)
  end
end
