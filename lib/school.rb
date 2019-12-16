class School
attr_accessor 
attr_reader :name, :roster


def initialize(name)
    @name = name
    @roster = {}
end

def add_student(student_name, grade)
   if @roster[grade]
        @roster[grade] << student_name
   else   
    @roster[grade] = []
    @roster[grade] << student_name
   end
end

def grade(grade)
    @roster[grade]
end

def sort
    sorted_roster = {}
    @roster.each {|grade, students_array| 
    sorted_roster[grade] = students_array.sort
    }
    sorted_roster
end

end