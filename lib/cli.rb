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
    # sleep(1)
    # puts "Or type 'records_by_year' for a date sorted list of my albums"
    
    user_entry = gets.strip.downcase #gets the user entry
    
    if user_entry != "records" #logic for user input choice, chose records or sorted
      db_menu
    else
      puts "This chaos is killing me"
      #display unsorted list
      
      show_list_of_albums
      
      user_record_selector
      
      # elsif user_entry == "records_by_year"
      # puts "Your all hung up on her mind filters"
      # record_date_sorter
    end
  end
    
    def show_list_of_albums
      
      #access the list
      DB_Record.all.each.with_index(1) do |record, index|
        #binding.pry
        puts "#{index} - #{record.name}"
      #print each album out
      end
    end
      
    def user_record_selector
      puts "Select a number to access the corresponding album"
      user_index_selection = gets.strip.downcase.to_i - 1
      
      if !user_index_selection.between?(0, 24)
        user_record_selector
        else
      
        current_record_instance = DB_Record.all[user_index_selection]
      
        puts "You've chosen: #{current_record_instance}"
        sleep(2)
        
        puts "Type records to go back to the list, or type exit to end the program"
        user_selection = gets.strip.downcase
       
        if user_selection == "records"
          show_list_of_albums
          
          else puts "Type records to go back to the list, or type exit to end the program"
          user_selection = gets.strip.downcase
          
        # if user_index_selection == "exit"
        
        # more_record_info = DB_Record.all[current_record_instance]
        #binding.pry
      end
      end
    end
      
    # def record_date_sorter
    #   date_array = []
    #   DB_Record.all.each do |record, record_name|
    #     date_to_integer = record.release_year.to_i
    #     record_name = record.name
    #     date_array << {record_name => date_to_integer
    #     binding.pry
    #   end
    #   sorted_dates = date_array.sort
    #   sorted_dates
    # end
      
    
  
end