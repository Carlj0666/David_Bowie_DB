class API
  
  def self.fetch_albums
    url = "https://www.theaudiodb.com/api/v1/json/1/searchalbum.php?s=david_bowie"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    
    albums_array = hash["album"]
    
    albums_array.each do |album|
      
      record = DB_Record.new
      record.name = album["strAlbum"]
      
      binding.pry
    end
  end
  
  
end