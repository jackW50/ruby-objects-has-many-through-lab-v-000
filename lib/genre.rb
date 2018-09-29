class Genre
  attr_accessor 
  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    self.songs.select do |song|
      song.artist
    end
  end

end