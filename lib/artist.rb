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
    song = Song.new(name, self, genre)
    self.all << song
  end

  def songs
    Songs.all.select do |song|
      song.artist == self
    end 
  end 

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end