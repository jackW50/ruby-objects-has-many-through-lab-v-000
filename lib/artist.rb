class Artist
  attr_accessor   
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

 # def songs
  #  self.songs.select do |song|
   #   song.artist 
   # end 
  #end 

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end