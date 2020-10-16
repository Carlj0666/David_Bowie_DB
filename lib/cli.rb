class CLI
  
  def start
    puts "The David Bowie DB is happening now, not tomorrow"
    sleep(1)
    API.fetch_albums
  end
  
  
end