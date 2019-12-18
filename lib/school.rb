# # code here!

# # class School
 
# #     def initialize(school)
# #     @school = school
# #     @roster = {}
# #   end

  
# #   def add_student(name, grade)
# #   end 
  
# # end 

class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

    def add_student(name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << name
  end
  
    def sort 
    @roster = @roster.sort_by { |grade| grade }.to_h
    @roster.each do |grade, names|
      @roster[grade].sort!
    end
  end 

def grade(grade)
    @roster[grade]
  end

end