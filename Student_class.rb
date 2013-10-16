class Student
  attr_accessor :scores, :first_name
 
  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores     = args[:scores]
  end
 
  def average
    scores.inject(:+) / scores.size
  end
 
  def letter_grade
    student_avg = average
    case student_avg
    when 90..100 then 'A'
    when 80..89  then 'B'
    when 70..79  then 'C'
    when 60..69  then 'D'
    when 0..59   then 'F'
    end
  end
end
 
## ADD YOUR CODE HERE and IN THE CLASS ABOVE
 
#1. Create an array of 5 Students each with 5 test scores between 0 and 100.  
# The first Student should be named "Alex" with scores [100,100,100,0,100]
 
 def create_array_of_student_objects(array_of_students)
   students = []
   array_of_students.each do |student|
      students << Student.new(student)
   end
 
   students
 end
 
 
 students = [
                 {:first_name => 'Alex', :scores => [100,100,100,0,100]}, 
                 {:first_name => 'Thomas', :scores => [89,79,100,98]},
                 {:first_name => 'Nick', :scores => [80,90,89,100]}, 
                 {:first_name => 'Rich', :scores => [89,90,87,67]}, 
                 {:first_name => 'Sam', :scores => [78,67,88,79]}
            ]
 
 
 
students = create_array_of_student_objects students
 
def linear_search(student_array, first_name)
  (index = student_array.index { |student| student.first_name == first_name }) ? index : -1
end
 
linear_search students, 'Alex' # => 0
 
 
 
 
#3. Write a linear_search method that searches the student array for a student name
# and returns the position of that student if they are in the array.
 
 
 
 
#===========DRIVER CODE : DO NOT MODIFY =======
 
#Make sure these tests pass
# Tests for part 1:
 
p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0
 
 
# Tests for part 2
 
p students[0].average == 80
p students[0].letter_grade == 'B'
 
# # Tests for part 3
 
 
p linear_search(students, "Alex") == 0 
p linear_search(students, "NOT A STUDENT") == -1
 
# >> true
# >> true
# >> true
# >> true
# >> true
# >> true
# >> true
# >> true