# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #If grade is not already a key in @roster, then make it a key!
    #When you make it a key, it points to an empty array
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name] 
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort()
    @roster[grade].sort
  end

end














