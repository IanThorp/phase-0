# OO Basics: Student


# I worked on this challenge [Patrick Skelley ].
# This challenge took me [2] hours.



# Pseudocode
# input: array with 5 Student objects
# steps :
# initialize student instance with first name and the score
# create average method for student class based on scores
#   assign letter grade to student from average score
# output:

#input: student name
#output: tell if the student is in the array or not if in the array should return the index

#use the student name and traverse the students array and examine the student objects
# use a conditional to check if the student name is in a student object
# if it is then return the index at which the student belongs
# if not return -1


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @scores = scores
    @first_name = first_name
    @average = 0
  end

  def average
    running_total = 0
    @scores.each do |score|
      running_total += score
    end
    @average = running_total / @scores.length

  end

  def letter_grade
    case
      when @average < 60
        'F'
      when @average >= 60 && @average < 70
        'D'
      when @average >= 70 && @average < 80
        'C'
      when @average >= 80 && @average < 90
        'B'
      when @average >= 90 && @average <= 100
        'A'
    end
  end




end



def linear_search(student_array, student_name)
  bool = nil
  current_index = -1
  student_array.each_with_index do |object, index|
    if object.first_name == student_name
      bool = true
      current_index = index
    end
  end
  bool ? current_index : -1
end


def binary_search(student_array, student_name)
  #sort array objects by student_name

   # puts student_array.first_name.sort
  test_array=[]
  student_array.each do |object|
    test_array << object.first_name
  end
  test_array.sort!

  current_index = (test_array.length / 2).floor

  while student_name > test_array[current_index]
    current_index += 1
  end
  while student_name < test_array[current_index]
    current_index -= 1
  end
  student_array.each_with_index do |object, index|
    if object.first_name == test_array[current_index]
      return index
    else
      return -1
    end
  end


  # student_array
  # sort objects in the student array by name
  # put sorted objects in order in test_array
  # if student_name > test_array[start]
  # loop  going up
  # if not the loop going down
end




students = []
students[0] = Student.new("Alex", [100,100,100,0,100])
students[1] = Student.new("Tim", [100,100,100,0,100])
students[2] = Student.new("Sarah", [100,100,100,0,100])
students[3] = Student.new("Rachel", [100,100,100,0,100])
students[4] = Student.new("Charles", [100,100,100,0,100])

# Refactored Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @scores = scores
    @first_name = first_name
  end

  def average
    running_total = 0
    @scores.each do |score|
      running_total += score
    end
    @average = running_total / @scores.length

  end

  def letter_grade
    case
      when @average >= 90
        'A'
      when @average >= 80
        'B'
      when @average >= 70
        'C'
      when @average >= 60
        'D'
      else
        'F'
    end
  end
end



def linear_search(student_array, student_name)
  index = student_array.find_index{|obj| obj.first_name == student_name}

  if index == nil then index = -1 end
  index
end


def binary_search(student_array, student_name)

  sorted_array = student_array.sort_by {|obj| obj.first_name}
  correct_obj = sorted_array.bsearch {|obj| obj.first_name == student_name}
  if student_array.index(correct_obj) != nil
    student_array.index(correct_obj)
  else
    -1
end

  # student_array
  # sort objects in the student array by name
  # put sorted objects in order in test_array
  # if student_name > test_array[start]
  # loop  going up
  # if not the loop going down
end




students = []
students[0] = Student.new("Alex", [100,100,100,0,100])
students[1] = Student.new("Tim", [100,100,100,0,100])
students[2] = Student.new("Sarah", [100,100,100,0,100])
students[3] = Student.new("Rachel", [100,100,100,0,100])
students[4] = Student.new("Charles", [100,100,100,0,100])

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:
puts "Linear Tests"
p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Binary test:
puts "Binary Tests"
p binary_search(students, "noy") == -1
p binary_search(students, "Tim") == 1


# Reflection

=begin

What concepts did you review in this challenge?

  I learned about the different search methods available and also solidified how to create a class and methods for that class.

What is still confusing to you about Ruby?

  Nothing that really relates to this challenge. I would like to learn how to deal with regular expressions though.

What are you going to study to get more prepared for Phase 1?

  I will study regular expressions and how those work.

=end