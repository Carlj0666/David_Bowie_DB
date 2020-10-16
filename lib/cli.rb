class CLI
  
  def start #start instance method
    puts "The David Bowie DB is happening now, not tomorrow" #prints messsage
    sleep(1) #waits to run API for (seconds)
    API.get_albums #runs API.rb
  end
  
  
end