require 'faker'
puts "🌱 Seeding..."

course1 = Course.create(title: 'Computer Science', semester: 1, year: 2)
course2 = Course.create(title: 'Medicine', semester: 2, year: 1)
course3 = Course.create(title: 'Business Administration', semester: 1, year: 4)
course4 = Course.create(title: 'Psychology', semester: 2, year: 3)

student1 = Student.create(first_name: 'Brian', last_name: 'Kiprop', middle_name: 'K.', course: course1)
student2 = Student.create(first_name: 'Mona', last_name: 'Lisa', middle_name: 'A.', course: course2)
student3 = Student.create(first_name: 'Ronald', last_name: 'Kipchumba', middle_name: 'S.', course: course3)
student4 = Student.create(first_name: 'Griffin', last_name: 'Kimutai', middle_name: 'B.', course: course4)

(1..25).each do
  title = Faker::Lorem.word
  semester = Faker::Number.between(from: 1, to: 3)
  year = Faker::Number.between(from: 1, to: 4)
  Course.create(title: title, semester: semester, year: year)
end

(1..100).each do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  middle_name = Faker::Name.middle_name
  course_id = Faker::Number.between(from: 1, to: Course.count)
  Student.create(first_name: first_name, last_name: last_name, middle_name: middle_name, course_id: course_id)
end

puts "✅ Done seeding!"
