require 'json'

module PreserveData
  LABELS_FILE_NAME = 'src/Store/labels.json'.freeze
  BOOKS_FILE_NAME = 'src/Store/books.json'.freeze

  def preserve_data
    save_books
    save_labels
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

  def save_to_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end
end
