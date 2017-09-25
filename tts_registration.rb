@courses = []
@students = []

class Course
	attr_accessor :name, :description, :level

  def initialize(name, description, level)
    @name = name
    @description = description
    @level = level
  end
end

class Student
	attr_accessor :name, :age, :hometown

	def initialize(name, age, hometown)
		@name = name
		@age = age
		@hometown = hometown
	end
end

def print_menu(thumbs)

	if thumbs == "up"
    system "clear"
	end

  puts "Welcome to TTS Registration"

  puts "Enter a selection: "
  puts "1. Add a course "
  puts "2. List courses "
  puts "3. Add a student "
  puts "4. List students "
  puts "5. Exit " 

  @option = gets.chomp.to_i
end

def add_course
	  puts "Enter course name: "
	  course_name = gets.chomp
	  puts "Enter course description: "
	  desc = gets.chomp
	  puts "Enter level of difficulty: "
	  level = gets.chomp

    new_course = Course.new(course_name, desc, level)

    @courses.push(new_course)

    puts @courses[0].name + " added to courses"

    print_menu("no")
end

def list_courses
  @courses.each do |course|
  	puts "#{course.name} | #{course.description} | #{course.level}"
  end 
  print_menu("no")
end

def add_student
  	puts "Enter student name: "
	  name = gets.chomp
	  puts "Enter student age: "
	  age = gets.chomp
	  puts "Enter student hometown: "
	  hometown = gets.chomp

    new_student = Student.new(name, age, hometown)

    @students.push(new_student)

    puts @students[0].name + " added to students"

    print_menu("no")
end

def list_students
  @students.each do |student|
  	puts "#{student.name} | #{student.age} | #{student.hometown}"
  end
  print_menu("no")
end

while @option != 5
	case 
	  when @option == 1
		  add_course
		when @option == 2
			list_courses
		when @option == 3
			add_student
		when @option == 4
			list_students
	  else 
	  	print_menu("up")
  end
end
