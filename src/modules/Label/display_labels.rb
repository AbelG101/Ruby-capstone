module DisplayLabels
  def display_labels
    puts '----------------'
    if @labels.length.zero?
      puts 'No labels yet 🕸 ,please add some labels...'
    else
      puts "Labels: "
      @labels.each_with_index do |label, index|
        puts "#{index}) title: '#{label.title}', color: '#{label.color}'"
      end
    end
    puts '----------------'
  end
end