require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
    @artists = []
  end

  def self.find_by_name(name)
    super
  end

  def self.all
    @@songs
  end

  def self.reset_all
    super 
  end

  def self.count
    super
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    super
  end
end
