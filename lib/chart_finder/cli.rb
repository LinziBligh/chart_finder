class ChartFinder::CLI
  
  def call 
    puts "What is the date of the chart that you would like to look up?"
    @date = gets.strip
    list_songs
    menu
    goodbye
  end
  
  
  def list_songs
     puts "Here is the offial UK chart for #{@date}"
    @chart = ChartFinder::Song.chart
  end
 
 def menu
  
   input = nil
   while input != "exit"
    puts "Enter the number of the song that you would like more information about, type chart to see the chart again or type exit to end"
   input = gets.strip.downcase
      case input
        when "chart"
          list_songs
        when "1"
        puts "More info about song 1"
        when "2"
        puts "More info about song 2" 
        else
        puts "Invalid choice"
      end
    end
  end
  
  def goodbye
    puts "Thanks for using Chart Finder! Goodbye!"
  end
 
 

end