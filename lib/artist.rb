class Artist
  attr_accessor   
  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs << song
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