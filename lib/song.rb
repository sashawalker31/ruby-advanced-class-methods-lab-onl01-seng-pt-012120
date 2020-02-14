class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(song)
    song = Song.create
    Song.all.include?(song)
  end 
  
  def new_by_name
    song = Song.new_by_name("The Middle")
    song.name
  end 
  
  def create_by_name
    song = Song.create_by_name("The Middle")
    song 
    Song.all.include?(song)
  end 
  
  def find_by_name
    the_middle = Song.create_by_name("The Middle")
    Song.find_by_name("The Middle")
  end 
  
  def find_or_create_by_name
    song_1 = Song.find_or_create_by_name("Blank Space")
    song_2 = Song.find_or_create_by_name("Blank Space")
    song_1 == song_2
  end
  
  def alphabetical
    song.sort_by
  end 
  
  def new_from_filename
    song = Song.new_from_filename("Taylor Swift - Blank Space.mp3")
    song.name 
    song.artist_name
  end 
  
  def create_from_filename
end
end
