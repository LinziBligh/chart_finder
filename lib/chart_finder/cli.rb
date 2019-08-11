class ChartFinder::CLI
  
  def call 
    puts "What is the date of the chart that you would like to look up?"
    @date = gets.strip
    list_songs
    menu
    goodbye
  end
  
  
  def list_songs
     puts "Here is the official UK chart for #{@date}"
    @chart = ChartFinder::Song.chart
    @chart.each.with_index(1) do |song, index|
      puts "#{index}. #{song}"
    end
  end
 
 def menu
  
   input = nil
   while input != "exit"
    puts "Enter the number of the song that you would like more information about, type chart to see the chart again or type exit to end"
   input = gets.strip.downcase
   
   if input.to_i > 0
    @chart[input.to_i - 1]
    elsif input == "chart"
      list_songs
    else
      puts "Invalid choice"
       end
    end
  end
  
  def goodbye
    puts "Thanks for using Chart Finder! Goodbye!"
  end
 
 

end