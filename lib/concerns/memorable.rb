module Memorable
  module ClassMethods # indicating class methods to be extended

    def reset_all # define method to be exteded to class(es)
      self.all.clear 
    end

    def count # define method to be exteded to class(es)
      self.all.count
    end
  end
  module InstanceMethods # include to both classes 
    
    def initialize # removed from song, but used super in artist to keep track of songs 
      self.class.all << self 
    end
  end
  
end