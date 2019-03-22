class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @all
  end

  def new_song(name, genre)
    Song.new(name, genre).tap {|s| s.artist = self}
  end

end
