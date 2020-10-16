class DB_Record
  
  attr_accessor :name, :release_year, :description, :genre, :label #macro and symbols, create read/writer for the attributes
  
  @@all = []
  
  def initialize #on instance creation, sets condition
    @@all << self #shovels self(instance)  into class variable @@all
  end
  
  def self.all #class reader, exposes info outside the class
    @@all #info exposed outside of class
  end
  
  #Make another method or 2 for this class (organize and display by year?)
  
end