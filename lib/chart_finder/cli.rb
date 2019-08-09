class ChartFinder::CLI
  
  def call 
    puts "What is the date of the chart that you would like to look up?"
    @date = gets.strip
    lists_songs
    menu
    goodbye
    
  end
  
  
  def lists_songs
    puts "Here is the offial UK chart for #{@date}"
    puts <<-DOC #look up "here doc" ...
    1. first song - artist - date
    2. second song - artist - date
 DOC
 end
 
 def menu
   puts "Enter the number of the song that you would like more information about, or type exit"
   input = nil
   while input != "exit"
   input = gets.strip.downcase
      case input
        when "1"
        puts "More info about song 1"
        when "2"
        puts "More info about song 2" 
      end
    end
  end
  
  def goodbye
    puts "Thanks for using Chart Finder! Goodbye!"
  end
 
 

end