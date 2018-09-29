class Genre
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
  
  def songs 
    Songs.all.select do |song|
      song.genre == self

  def artists
    self.songs.select do |song|
      song.artist
    end
  end

end