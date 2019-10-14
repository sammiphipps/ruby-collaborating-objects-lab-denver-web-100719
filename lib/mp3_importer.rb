class MP3Importer
  attr_reader :path
  @@all = []
  def initialize(file_path)
    @path = file_path
    @@all << self 
  end 
end 