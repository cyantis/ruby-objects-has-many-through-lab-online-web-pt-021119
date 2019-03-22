class Genre
  attr_accessor :name, :song, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|s| s.genre == self}
  end

  def genres
    Artist.all.select {|a| a.genre == self}
  end

end
