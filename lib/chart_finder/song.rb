class ChartFinder:: Song 

def self.date
  puts "Here is the offial UK chart for #{@date}"
    puts <<-DOC #look up "here doc" ...
    1. first song - artist - date
    2. second song - artist - date
 DOC
  #should return all of the instances of songs in the chart from this day.
end

end