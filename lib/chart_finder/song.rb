class ChartFinder::Song 
  attr_accessor :title, :artist, :label, :coverlink
  
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
   new_hash[:coverlink] = "https://images-eu.ssl-images-amazon.com/images/I/619fzjO1rmL.jpg" #song.css(".cover").children.attribute("src").value #not correct
    song_array << new_hash
end
song_array
end

end 