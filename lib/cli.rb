class CLI
  
  def start #start instance method
    puts "The David Bowie DB is happening now, not tomorrow..." #prints welcome messsage
    puts "\n"
    sleep(3) #waits to run API for (seconds)
    API.get_albums #runs API.rb to grab info from API and makes DB_Record instances
    self.db_menu
  end
  
  def db_menu
    puts "Hello, I'm the machine spirit of David Bowie come to share my albums with you."
    sleep(1)
    puts "Type 'records' for a list of my albums."
    
    user_entry = gets.strip.downcase #gets the user entry
    
    if user_entry != "records" #logic for user input choice, chose records or sorted
    puts "I ask for so little. Let's start from the beginning."
    puts "\n"
    sleep(2)
      db_menu
    else
      puts "This chaos is killing me..."
      puts "\n"
      
      show_list_of_albums
      
      user_record_selector
      
      record_detail_viewer
      
    end
  end
    
  def show_list_of_albums
    DB_Record.all.each.with_index(1) do |record, index| #iterate through indexes of the DB_Record array
    puts "#{index} - #{record.name}"#print each album out
    end
  end
      
      
  def user_record_selector
    puts "Select a number between 1 - 24 to access the corresponding album.\n"
    user_index_selection = gets.strip.downcase.to_i - 1
      
    if !user_index_selection.between?(0, DB_Record.all.length - 1)
      user_record_selector
    
    else
      current_record_instance = DB_Record.all[user_index_selection]
      puts "You've chosen: #{current_record_instance.name}\n"
      record_detail_viewer(current_record_instance)
    end
  end
      
      
  def record_detail_viewer(current_record)
    puts "I've been waiting for you, for such a long time now.\n"
    puts "Artist: Yours Truly db \n Record Name: #{current_record.name} \n Genre: #{current_record.genre} \n Release Year: #{current_record.release_year} \n Label: #{current_record.label} \n Description: #{current_record.description}\n"
    sleep(1)

    puts "Type 'records' to go back to the list or 'exit' to end.\n"
    user_selection = gets.strip.downcase
    
    if user_selection == "records"
      puts "Where do we go to now?\n"
      show_list_of_albums
      user_record_selector
      record_detail_viewer
      
    elsif user_selection == "exit"
      puts """If it works, its out of date."" ― David Bowie"
      exit!
    else
      puts "I dream of something like that.\n"
      record_detail_viewer(current_record)
    end
  end
  
  #need to figure out how to ignore letters or not numbers in album selection input LINE 47
  
end

