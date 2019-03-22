class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def new_song(name, genre)
    Song.new(name, genre).tap {|s| s.artist = self}
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def genres
    Genre.all.select {|g| g.artist == self}
  end

end
