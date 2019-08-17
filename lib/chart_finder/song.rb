class ChartFinder::Song 

attr_accessor :title, :artist, :label, :coverlink
  
  def self.scrape(url)
    html = open(url)
    doc = Nokogiri::HTML(html)
    songs = doc.css("table.chart-positions div.track")
    song_array = []
      
      songs.each do |song|
      new_hash = {}
      new_hash[:title] = song.css(".title a").text.split.map(&:capitalize).join(' ')
      new_hash[:artist] = song.css(".artist a").text.split.map(&:capitalize).join(' ')
      new_hash[:label] = song.css(".label").text.split.map(&:capitalize).join(' ')
      coverlink_text, uri = song.css(".cover img").attribute("src").value
      new_hash[:coverlink] = coverlink_text.gsub(URI.regexp, '<a href="\0">\0</a>')
   
   
      song_array << new_hash
      end
    song_array
  end

end 