require "pry"
require "open-uri"
class ChartFinder::Song 
  attr_accessor :title, :artist, :label, :coverlink
  
  
  @@all = []
  
def self.chart
  
  self.scrape
  
song_1 = self.new
song_1.title = "Pipes of Peace"
song_1.artist = "Paul Mcartney"
song_1.label = "Parlaphone"
 song_1.coverlink = "www.coverlink.com"
 @@all << song_1
 
 song_2 = self.new
 song_2.title = "Vengabus is coming"
 song_2.artist = "Vengaboys"
 song_2.label = "Eurotrash"
 song_2.coverlink = "www.coverlink.com"
 @@all << song_2
 
 @@all

end

def self.scrape
  html = open("https://www.officialcharts.com/charts/singles-chart/19840108/")
  doc = Nokogiri::HTML(html)
  title = doc.css("div .track").text.strip
  binding.pry
  # should return an array of all of the songs with details
end



end 