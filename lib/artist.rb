require 'pry'
 class Artist

  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
    #song
    @songs << song
  end

  def add_song_by_name(title)
    self.add_song(Song.new(title))
  end

  def self.song_count
    @@song_count
  end
 end

#binding.pry
puts ""
