# code here!
class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []    #couldnt figure this out so i went to the web
        roster[grade] << student
    end

    def grade(level)
        roster.detect do |grade, students|
            if grade  == level
                return students
            end
        end
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end

end