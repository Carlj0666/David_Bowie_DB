class API
  
  def self.get_albums
    #url = "https://www.theaudiodb.com/api/v1/json/1/searchalbum.php?s=david_bowie"
    url = "https://itunes.apple.com/lookup?id=551695&entity=album"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    
    albums_array = hash["results"]
    
    albums_array.shift
    
    albums_array.each do |album|
      
      record = DB_Record.new
      
      record.name = album["collectionName"]
      record.release_year = album["releaseDate"]
      record.description = album["collectionViewUrl"]
      record.genre = album["primaryGenreName"]
      record.label = album["copyright"]
    end
    
  end
  
  
end