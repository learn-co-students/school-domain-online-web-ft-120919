# code here!
class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster 
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else 
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade (grade)
    @roster[grade]
  end
  
  def sort 
    @roster = @roster.sort_by { |grade| grade }.to_h
    @roster.each do |grade, names|
      @roster[grade].sort!
    end
    # end
    # @roster.sort
    # @roster
  end
end