class ChartFinder::CLI
  
  BASE_PATH = "https://www.officialcharts.com/charts/singles-chart/"
  
  def call
    welcome
    puts "Please enter the date of the official UK singles chart that you would like to see, (DD/MM/YYYY). (Earliest available date is 14/11/1952)"
    date = gets.strip
    @chosen_date = date
    date_to_url(date)
    list_songs
    menu
    goodbye
  end
  
  def welcome
    puts ""
    puts "*************************************************"
    puts "*                                               *"
    puts "*          Welcome to ChartFinder!              *"
    puts "*                                               *"
    puts "*************************************************"
    puts ""
  end
  
  def date_to_url(date)
    adjusted_date = date.split('/').reverse.join("")
    @url = BASE_PATH + adjusted_date
  end
  
    
  def list_songs
     puts ""
     puts "Here is the official UK chart for #{@chosen_date}"
     puts ""
     puts "****************************************************************"
    @chart = ChartFinder::Song.scrape(@url)
    @chart.each.with_index(1) do |song, index|
      puts "#{index}. #{song[:title]} - #{song[:artist]}"
    end
  end
 
 
 def menu
  
   input = nil
   while input != "exit"
    puts "Enter the number of the song that you would like more information about, type chart to see the chart again or type exit to end"
   input = gets.strip.downcase
   
   if input.to_i > 0 && input.to_i <= @chart.length
     chosen_song = @chart[input.to_i-1]
    puts "Title: #{chosen_song[:title]}"
    puts "Artist: #{chosen_song[:artist]}"
    puts "Record Label: #{chosen_song[:label]}"
    puts "Link to Cover Artwork: #{chosen_song[:coverlink]}"
    elsif input == "chart"
      list_songs
    else
      puts "Invalid choice"
       end
    end
  end
  
  def goodbye
    puts "Thanks for using Chart Finder! Goodbye!"
  end
 
 

end