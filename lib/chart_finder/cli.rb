class ChartFinder::CLI
  
  def call 
    puts "What is the date of the chart that you would like to look up?"
    @date = gets.strip
    lists_songs
    menu
    
  end
  
  
  def lists_songs
    puts "Here is the offial UK chart for #{@date}"
    puts <<-DOC #look up "here doc" ...
    1. first song - artist - date
    2. second song - artist - date
 DOC
 end
 
 def menu
   puts "Enter the number of the song that you would like more information about"
 end

end