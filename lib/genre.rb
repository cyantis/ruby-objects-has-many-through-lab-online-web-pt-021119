class Genre
  attr_accessor :name

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

  def artists
    Song.all.find_all {|s| s.genre == self}.collect {|a| a.artist}
  end

end
