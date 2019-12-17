class School

  def initialize(n)
    @name=n
    @gradesIstudents = {}
  end

  def roster
    # hash with keys (grades) and values (array student names])
    @gradesIstudents
  end

  def add_student(n,g)
    #add name and grade
    if (!@gradesIstudents.key?(g))
      @gradesIstudents[g]= []
    end
    @gradesIstudents[g]<<n
  end

  def grade(g)
    @gradesIstudents[g]
  end

  def sort
    @gradesIstudents.each do |g, n|
      n.sort!
    end
   @gradesIstudents
  end

end

#=begin
school = School.new("Bayside High School")
puts school.roster.length
school.roster
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Aardvark", 10)
school.add_student("Xavier", 11)
school.add_student("Screech", 11)
school.roster
school.sort
school.grade(9)
#=end
