class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student (name,grade)
    if @roster[grade]
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    # if !@roster.include? (name) #If the roster doesn't include a student#
    #   @roster[grade] = [name] #Add them to their designated grade and record their name
    #   elsif @roster.include? [grade] #Unless the roster already includes hash[:two] = 2
    #   @roster[name]
    end 
      
  end
  
  def grade (name)
   @roster[name]
    
  end  
  def sort
    @roster.each do |key,value|
      value.sort!
    end 
  end   
end