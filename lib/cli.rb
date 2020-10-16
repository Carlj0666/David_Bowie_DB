class CLI
  
  def start #start instance method
    puts "The David Bowie DB is happening now, not tomorrow" #prints welcome messsage
    sleep(1) #waits to run API for (seconds)
    API.get_albums #runs API.rb to grab info from API and makes DB_Record instances
    self.db_menu
  end
  
  db_lyrics_mash_array = []
  
  def db_menu
    #give user option to see list of records or a list of the records by year
    puts "Hello, I'm the machine spirit of David Bowie come to share my albums with you"
    
    sleep(1)
    puts "Type 'records' for a list of my albums"
    sleep(1)
    puts "Or type 'records_by_date' for a date sorted list of my albums"
    
    user_entry = gets.strip.downcase
    
    if user_entry == "records"
      puts "This chaos is killing me"
      #display unsorted list
      
      elsif user_entry == "records_by_date"
      
      puts "Your all hung up on her mind filters"
    end
      
  end
  
end