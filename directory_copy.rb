@width = 75


def print_header
    puts "The students of Villains Academy".center(@width)
    puts "-------------".center(@width)
end

def print_footer(students)
    if students.length == 1
        puts "We have one great student".center(@width)
    else
        puts "Overall, we have #{students.count} great students".center(@width)
    end
end
def add_cohort
    next_cohort = "February"
    cohort = gets.chomp
    case cohort
      when "1"
        cohort = "January"
      when "2"
        cohort = "February"
      when "3"
        cohort = "March"
      when "4"
        cohort = "April"
      when "5"
        cohort = "May"
      when "6"
        cohort = "June"
      when "7"
        cohort = "July"
      when "8"
        cohort = "August"
      when "9"
        cohort = "September"
      when "10"
        cohort = "October"
      when "11"
        cohort = "November"
      when "12"
        cohort = "December"
      when ""
        puts "No input, the upcoming #{next_cohort} cohort was assigned".center(@width)
        cohort = next_cohort
      else
        puts "Wrong input , the upcoming #{next_cohort} cohort was assigned".center(@width)
        cohort = next_cohort
      end
      return cohort
end
def print(students)
    #students.each.with_index(1) do |student,index|
    #    if student[:name].length < 12
    #        puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@width)
    #    end
    #end
    ## reworked each statement
    #i = 0
    #while i < students.count
    #    puts "#{students[i][:name]} born in #{students[i][:country_of_birth]} (#{students[i][:cohort]})".center(@width)
    #    i += 1
    #end
    if students.empty?
        puts "No students available".center(@width)
    else
        cohorts = students.map do |student|
          student[:cohort]
        end
        cohorts.uniq.each do |cohort|
          puts "#{cohort} cohort".center(@width)
            students.each do |student|
                if student[:cohort] == cohort
                    puts student[:name].center(@width)
                end
            end
        end
    end
end

def input_students
    puts "Please enter the names of the students".center(@width)
    puts "To finish press return twice".center(@width)
    students = []
    name = gets.chomp
    puts "Please give the country of birth of the student".center(@width)
    country_of_birth = gets.chomp
    puts "Please put the number of the cohort you would like to join (1-12)".center(@width)
    cohort = add_cohort
    while !name.empty? do
        students << {name: name, cohort: cohort, country_of_birth: country_of_birth}
        if students.length == 1
            puts "We have one great student".center(@width)
        else
            puts "Now we have #{students.count} students".center(@width)
        end
        name = gets.chomp
        if name.empty?
            break
        end
        puts "Please give the country of birth of the student".center(@width)
        country_of_birth = gets.chomp
        puts "Please put the number of the cohort you would like to join (1-12)".center(@width)
        cohort = add_cohort
        
    end
    students
end
students = input_students
print_header
print(students)
print_footer(students)