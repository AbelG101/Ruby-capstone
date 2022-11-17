require 'json'

module PreserveData
  LABELS_FILE_NAME = 'src/Store/labels.json'.freeze
  BOOKS_FILE_NAME = 'src/Store/books.json'.freeze
  MOVIES_FILE_NAME = 'src/Store/movies.json'.freeze
  SOURCE_FILE_NAME = 'src/Store/source.json'.freeze

  def preserve_data
    save_books
    save_labels
    save_movies
    save_sources
  end

  def save_books
    books_hash = []
    @books.each do |book|
      book_hash = {
        publisher: book.publisher,
        cover_state: book.cover_state,
        publish_date: book.publish_date,
        label: {
          title: book.label.title,
          color: book.label.color
        }
      }
      books_hash << book_hash
    end
    save_to_file(BOOKS_FILE_NAME, books_hash)
  end

  def save_labels
    labels_hash = @labels.map do |label|
      {
        title: label.title,
        color: label.color
      }
    end
    save_to_file(LABELS_FILE_NAME, labels_hash)
  end

  def save_movies
    movies_hash = []
    @movies.each do |move|
      movies_hash << {
        name: move.name,
        publish_date: move.publish_date,
        silent: move.silent,
        author_first_name: move.author.first_name,
        author_last_name: move.author.last_name,
        label_title: move.label.title,
        label_color: move.label.color,
        genre: move.genre.names,
        source: move.source.name
      }
    end
    save_to_file(MOVIES_FILE_NAME, movies_hash)
  end

  def save_sources
    sources_hash = []
    @sources.each do |source|
      sources_hash << {
        name: source.name,
        id: source.id
      }
    end
    save_to_file(SOURCE_FILE_NAME, sources_hash)
  end

  def save_to_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end
end
