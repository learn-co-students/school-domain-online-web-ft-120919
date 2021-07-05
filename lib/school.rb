require 'pry'

class School
  attr_accessor :roster, :school_name, :student_name
  
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |h, k| h[k] = [] }
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each do |grade, student_name|
      student_name.sort!
    end
  end
end