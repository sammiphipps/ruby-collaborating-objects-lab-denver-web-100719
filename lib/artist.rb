class Artist
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
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  def add_song(song)
    song.artist = self
  end 
  def self.find_or_create_by_name(name)
    inside_all = @@all.include?(name)
    if inside_all == true 
      @@all.reduce do |artist|
        if artist.name == name
          return artist
        end 
      end 
    else 
      Artist.new(name)
    end 
  end 
end 