class ChartFinder::Song 
  attr_accessor :title, :artist, :label, :coverlink
  
  
  @@all = []
  
def self.chart
  
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

def self.scrape(url)
  html = open(url)
  doc = Nokogiri::HTML(html)
  songs = doc.css("table.chart-positions div.track")
  song_array = []
  songs.each do |song|
    new_hash = {}
    new_hash[:title] = song.css(".title a").text
    new_hash[:artist] = song.css(".artist a").text
    new_hash[:label] = song.css(".label").text
    new_hash[:coverlink] = song.css(".cover").children.attribute("src").value #not correct
    song_array << new_hash
end
song_array
binding.pry
  # should return an array of all of the songs with details
end





end 