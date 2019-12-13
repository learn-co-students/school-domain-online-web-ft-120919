# code here!

class School
  
  # attr_accessor :grade 
  attr_reader :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade_num)
    @roster[grade_num] = [] if !@roster.keys.include?(grade_num)
    @roster[grade_num] << name
  end
  
  def grade(grade_num)
    @roster[grade_num]
  end
    
  def sort 
    new_hash = {}
    @roster.each do |grade, students_in_grade|
      new_hash[grade] = students_in_grade.sort
    end 
    new_hash
  end 
  
end