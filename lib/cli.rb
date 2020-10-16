class CLI
  
  def start #start instance method
    puts "The David Bowie DB is happening now, not tomorrow" #prints welcome messsage
    sleep(1) #waits to run API for (seconds)
    API.get_albums #runs API.rb to grab info from API and makes DB_Record instances
    self.db_menu
  end
  
  def db_menu
    #give user option to see list of records or a list of the records by year
    puts "Hello, I'm the machine spirit of David Bowie come to share my albums with you"
    
    sleep(1)
    puts "Type 'records' for a list of my albums"
    sleep(1)
    # puts "Or type 'records_by_date' for a date sorted list of my albums"
    
    user_entry = gets.strip.downcase #gets the user entry
    
    if user_entry == "records" #logic for user input choice, chose records or sorted
      puts "This chaos is killing me"
      #display unsorted list
      
      show_list_of_albums
      
      # elsif user_entry == "records_by_date"
      # puts "Your all hung up on her mind filters"
      #display sorted list
    end
  end
    
    def show_list_of_albums
      
      #access the list
      DB_Record.all.each do |record|
        #binding.pry
        puts record.name
      #print each album out
      end
    end
      
      #show sorted list of albums
      #use .sort
  
end