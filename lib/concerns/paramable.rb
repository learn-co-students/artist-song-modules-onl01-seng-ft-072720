  module Paramable # included in both classes 

    def to_param # replaced from both classes 
      name.downcase.gsub(' ', '-')
    end
    
end