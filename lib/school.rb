# code here!
class School
    attr_accessor :roster, :name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
   
    def add_student(name, grade)
        @roster[grade] ||= []
          @roster[grade] << name       
    end
    
    def grade(grade)
        if @roster[grade]
           @roster[grade]
        end
    end
    def sort
        sorted_hash = {}
        roster.each do |key, value|
         sorted_hash[key] = value.sort
        end
        sorted_hash
      end
    
end