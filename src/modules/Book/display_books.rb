module DisplayBooks
  def display_books
    puts '----------------'
    if @books.length.zero?
      puts 'No books yet 🕸 ,please add some books...'
    else
      @books.each_with_index do |book, index|
        puts "#{index}) publisher: '#{book.publisher}', cover-state: '#{book.cover_state}' Published at: '#{book.publish_date}'"
      end
    end
    puts '----------------'
  end
end
