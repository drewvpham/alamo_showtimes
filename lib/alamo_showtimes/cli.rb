class AlamoShowtimes::CLI

  def call
    list_theaters
    menu
    goodbye
  end



  def list_theaters
    puts '*'*20+' Welcome to AlamoShowtimes '+'*'*20
    puts 'Please choose from the following Austin area Alamo Drafthouses to see what movies are playing today:'
    AlamoShowtimes::City.all
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you'd like to see the showtimes of, type 'list' to see the movies again, or type exit:"
      input = gets.strip.downcase


  end
end

  def goodbye
    puts "Goodbye and thank you for using AlamoShowtimes."
  end
end
