module DisplayAuthor
  def display_author
    puts '----------------'
    if @persist_authors.length.zero?
      puts 'No author yet 🕸 ,please add some authors...'
    else
      puts 'Game: '
      @persist_authors.each_with_index do |author, index|
        puts "#{index}) first_name: '#{author['first_name']}', last_name: '#{author['last_name']}'"
      end
    end
    puts '----------------'
  end
end
