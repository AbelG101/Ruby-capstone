require_relative '../../Classes/source'
module Source
    def list_source
      puts ''
      puts 'List of all sources:'
      puts ''
      if @sources.empty?
        puts 'No sources recorded yet.'
        return
      end
      @sources.each do |source|
        puts "Source: #{source.name}"
      end
      puts ''
    end
end