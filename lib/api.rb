class API #Grabs info from the API and creates a hash, instantiates new instances of the DB_Record class inside the API class
  
  def self.get_albums #class method
    url = "https://www.theaudiodb.com/api/v1/json/1/searchalbum.php?s=david_bowie" #creates url variable
    uri = URI(url) #define
    response = Net::HTTP.get(uri) #define
    hash = JSON.parse(response) #creates hash var equal to calling parse on JSON, with response as the argument
    
    albums_array = hash["album"] #Assign var for hash at the "album" key
    
    albums_array.each do |album| #iterate over the array, sets |album| block
      
      record = DB_Record.new #creates new instance variable of the class DB_Record
      record.name = album["strAlbum"] #uses hash to identify name, release year, description, genre, label
      record.release_year = album["intYearReleased"]
      record.description = album["strDescriptionEN"]
      record.genre = album["strGenre"]
      record.label = album["strLabel"]
    end
  end
  
  
end