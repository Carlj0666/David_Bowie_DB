class API
  
  def self.get_albums #class method
    url = "https://www.theaudiodb.com/api/v1/json/1/searchalbum.php?s=david_bowie"
    uri = URI(url) #define
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    
    albums_array = hash["album"]
    
    albums_array.each do |album|
      
      record = DB_Record.new
      record.name = album["strAlbum"]
      record.release_year = album["intYearReleased"]
      record.description = album["strDescriptionEN"]
      record.genre = album["strGenre"]
      record.label = album["strLabel"]
    end
  end
  
  
end