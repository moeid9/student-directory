@width = 50 
def print_header
    puts "The students of Villains Academy".center(@width)
    puts "-------------".center(@width)
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students".center(@width)
end

def print(students)
    students.each.with_index(1) do |student,index|
        if student[:name].length < 12
            puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@width)
        end
    end
    ## reworked each statement
    i = 0
    while i < students.count
        puts "#{students[i][:name]} born in #{students[i][:country_of_birth]} (#{students[i][:cohort]})".center(@width)
        i += 1
    end
end

def input_students
    puts "Please enter the names of the students".center(@width)
    puts "To finish press return twice".center(@width)
    students = []
    name = gets.chomp
    puts "Please give the country of birth of the student".center(@width)
    country_of_birth = gets.chomp
    while !name.empty? do
        students << {name: name, cohort: :november, country_of_birth: country_of_birth}
        puts "Now we have #{students.count} students".center(@width)
        name = gets.chomp
        if name.empty?
            break
        end
        puts "Please give the country of birth of the student".center(@width)
        country_of_birth = gets.chomp
    end
    students
end
students = input_students
print_header
print(students)
print_footer(students)