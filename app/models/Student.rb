class Student < ActiveRecord::Base
    belongs_to :course
    

    def self.alphabetize
        self.all.sort{ |a| a.title.downcase }
    end

end