class ChartFinder::CLI
  
  def call 
    puts "testing setup"
    lists_songs
  end
  
  
  def lists_songs
    puts <<-DOC #look up "here doc" ...
    1. first song - artist - date
    2. second song - artist - date
 DOC
 end

end