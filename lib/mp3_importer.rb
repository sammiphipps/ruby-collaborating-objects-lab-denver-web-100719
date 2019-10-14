class MP3Importer
  attr_reader :file_path
  @@all = []
  def initialize(file_path)
    @file_path = file_path
    @@all << self 
  end 
end 