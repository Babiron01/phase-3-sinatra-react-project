class Course < ActiveRecord::Base
    has_many :students
    

    def full_name
        "#{self.title}" 
    end

end