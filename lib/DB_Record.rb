class DB_Record
  
  attr_accessor :name, :release_year, :description, :genre, :label
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end

  
end