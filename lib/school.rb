# code here!
# def School
#   def initialize(name)
#     @name = name
#     @roaster = {}
#   end
#   def roaster 
#     @roaster
#   end
#   def add_student
# end
# end

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end











# class Shoe
#   attr_accessor :color, :size, :material, :condition
#   attr_reader :brand
# BRANDS = []
#   def initialize(brand)
#     @brand = brand
#     BRANDS << brand
#   end

#   def cobble
#     self.condition = "new"
#     puts "Your shoe is as good as new!"
#   end

# end