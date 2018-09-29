class Genre
  attr_accessor :songs
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    songs = []
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