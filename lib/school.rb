class School

attr_accessor :name, :roster

 def initialize(name)
   @name = name
   @roster = {}
 end 
 
 def add_student(student, level)
   roster[level] ||= []
   roster[level] << student
 end   
 
 def grade(level)
   
   roster.find do |x, y|
     if x == level
       return y
     end
   end
 end 
 
 def sort
   sorted = {}
    roster.each do |x, y|
    sorted[x] = y.sort
  end
  
  sorted
 end  

end  