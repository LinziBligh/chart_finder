
class ChartFinder::Song 
  attr_accessor :name, :artist, :label, :coverlink
  
  
  @@all = []
  
def self.chart
  
song_1 = self.new
song_1.name = "Pipes of Peace"
song_1.artist = "Paul Mcartney"
song_1.label = "Parlaphone"
 song_1.coverlink = "www.coverlink.com"
 @@all << song_1
 
 song_2 = self.new
 song_2.name = "Vengabus is coming"
 song_2.artist = "Vengaboys"
 song_2.label = "Eurotrash"
 song_2.coverlink = "www.coverlink.com"
 @@all << song_2
 
  puts "#{@@all}"


  #should return all of the instances of songs in the chart from this day.
end

end 