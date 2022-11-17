require_relative '../Classes/label'
require_relative '../Classes/book'
require_relative '../Classes/movie'
require_relative '../Classes/source'

module LoadData
  LABELS_FILE_NAME = 'src/Store/labels.json'.freeze
  BOOKS_FILE_NAME =  'src/Store/books.json'.freeze
  MOVIES_FILE_NAME = 'src/Store/movies.json'.freeze
  SOURCE_FILE_NAME = 'src/Store/source.json'.freeze

  def load_data
    load_books
    load_labels
    load_movies
    load_sources

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
   movies_hash = []
   return movies_hash unless File.exist?(MOVIES_FILE_NAME)
    
   movies_hash = load_data_from_file(MOVIES_FILE_NAME)
   @movies = movies_hash.map do |movie|
      Movie.new(movie['name'], movie['publish_date'], movie['silent'])
    end
  end

  def load_sources
    sources_hash = []
    return sources_hash unless File.exist?(SOURCE_FILE_NAME)

    sources_hash = load_data_from_file(SOURCE_FILE_NAME)
    @sources = sources_hash.map do |source|
       Source.new(source['name'])
    end
  end

  def load_data_from_file(file_name)
    file = File.read(file_name)
    JSON.parse(file)
  end
end
