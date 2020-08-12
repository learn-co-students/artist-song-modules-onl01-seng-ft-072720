require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Findable::ClassVariable
  include Paramable::InstanceMethods
  extend Memorable::ClassVariable
  include Memorable::InstanceMethods

  @@songs = []

 def self.all
    @@songs
end

  def artist=(artist)
    @artist = artist
  end
  

end
