require 'pry'
class Song

    attr_accessor :name, :artist

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def self.new_by_filename(file)
    split_file = file.split(" - ")
    song = Song.new(split_file[1])
    song.artist_name = split_file[0]
    song
    # binding.pry
end

def artist_name= (name)
    self.artist = Artist.find_or_create_by_name(name)
end

end