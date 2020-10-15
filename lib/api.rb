

class API
  
  def self.fetch_albums
    
    url = "https://www.theaudiodb.com/api/v1/json/1/searchalbum.php?s=david_bowie"
    binding.pry
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
  end
  
  
end