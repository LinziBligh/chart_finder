require "pry"
class ChartFinder::CLI
  def call
    welcome
    puts "Please enter the date of the official UK singles chart that you would like to see, (DD/MM/YYYY). (Earliest available date is 14/11/1952)"
    date = gets.strip
    @chosen_date = date
    date_to_url(date)
    #dates_to_urls(date)
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
  
  BASE_PATH = "https://www.officialcharts.com/charts/singles-chart/"
  
  ###################################################
  #following methods for possible soundtrack to life feature
  
  # def dates_until_now(date)
  #   years_array = []
  #   year = date.split('/')[2].to_i
  #   @day_month = "#{date.split('/')[0]}/#{date.split('/')[1]}"
  #   until year == Date.today.year
  #   years_array << year
  #   year += 1
  # end
  # years_array
  # end
  
  # def dates_to_urls(date)
  # dates_until_now(date).map do |year| 
  # date_to_url("#{@day_month}/#{year.to_s}")
  # end
  # end
  
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
    puts "****************************************************************"
  end
 
 
  def menu
    input = nil
   
    while input != "exit"
      puts "Please enter the number of the song that you would like more information about, type chart to see the chart again or type exit to end"
   
      input = gets.strip.downcase
   
    if input == "exit"
      break
    elsif input == "chart"
      list_songs
    elsif input.to_i > 0 && input.to_i <= @chart.length
      chosen_song = @chart[input.to_i-1]
      puts ""
      puts "***************************************************************"
      puts "Title: #{chosen_song[:title]}"
      puts "Artist: #{chosen_song[:artist]}"
      puts "Record Label: #{chosen_song[:label]}"
      puts "Artwork Link: #{chosen_song[:coverlink]}"
      puts "***************************************************************"
      puts ""
    elsif input.to_i <= 0 || input.to_i > @chart.length
      puts "Invalid choice, please choose a song number between 1 and #{@chart.length}"
      puts ""
    else
       end
    end
  end
  
  def goodbye
    puts "Thanks for using Chart Finder! Goodbye!"
  end
 
end