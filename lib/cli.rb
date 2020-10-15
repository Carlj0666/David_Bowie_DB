class CLI
  
  def start
    puts "The David Bowie DB is happening now, not tomorrow"
    API.fetch_albums
  end
  
  
end