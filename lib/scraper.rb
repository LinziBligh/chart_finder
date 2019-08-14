class Scraper

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