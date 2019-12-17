# code here!
class School
    def initialize(school_name)
        @school = school_name
        @roster = {}
    end
    
    def roster
       @roster
    end

    def add_student(student_name, student_grade)
        if @roster.key?(student_grade)
            @roster[student_grade] << student_name
        else
            @roster[student_grade] = []
            @roster[student_grade] << student_name
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        @roster.each do |student_grade, student_name_array|
            @roster[student_grade] = student_name_array.sort
        end
    end
end