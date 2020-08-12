module Findable
  module ClassMethods

    def find_by_name(name)
      self.all.detect{|a| a.name == name} # took self out of def, then replaced artist class with self, then added .all after self to get all instances of a class
    end

  end
end
