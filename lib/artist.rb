require 'pry'


class Artist
  
  attr_accessor :name
  attr_reader :songs
  
  extend Findable::ClassVariable
  include Paramable::InstanceMethods
  extend Memorable::ClassVariable
  include Memorable::InstanceMethods
  
  @@artists = []

  def initialize
     super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  def add_songs(song)
    songs_array = []
    songs_array2 = []
    @songs << songs_array
    @songs << songs_array2
  end
end
