class School
  
  
  
attr_reader :name, :roster


def initialize(name)
  @name = name 
  @roster = {}
end

def add_student(name, grade)
  if @roster.has_key?(grade)
    @roster[grade] << name 
  else 
    @roster[grade] = [name]
  end 
end 

def grade(grade)
  self.roster[grade]
end 






def sort 
  nu_hash = {}
  roster.each do |x, y| 
    nu_hash[x] = y.sort 
  end 
  nu_hash
end 
  

  
  
  
  

  
end 


