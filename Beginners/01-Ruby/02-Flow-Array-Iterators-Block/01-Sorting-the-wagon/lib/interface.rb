require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
  students << name unless name == ""

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list
puts "Congratulation! Your Wagon has #{students.size} students:"

students = wagon_sort(students)

puts "#{students.take(students.length - 1).join(", ")} and #{students.last}"


