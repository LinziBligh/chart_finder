class ChartFinder:: Song 
  attr_accessor :name, :artist, :label, :coverlink

def self.chart
  puts <<-DOC #look up "here doc" ...
    1. first song - artist - date
    2. second song - artist - date
 DOC
 song1 = self.new
 song1.name = "Pipes of Peace"
 song1.artist = "Paul Mcartney"
 song1.label = "Parlaphone"
 song1.coverlink = "www.coverlink.com"
 
 song2 = self.new
 song2.name = "Vengabus is coming"
 song2.artist = "Vengboys"
 song2.label = "Eurotrash"
 song2.coverlink = "www.coverlink.com"
 
 [song1, song2]
 
 
  #should return all of the instances of songs in the chart from this day.
end

end 