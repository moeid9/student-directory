@students = []
@width = 75
@default_filename = "students.csv"
def divider
    puts "-------------".center(@width)
end

def print_header
    if !@students.empty?
        puts "The students of Villains Academy".center(@width)
        divider
    end
end

def print_footer
    puts "Overall, we have #{@students.count} great students".center(@width)
end

def print_students_list
    @students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@width)
    end
end

def print_menu
    puts "1. Input the students".center(@width)
    puts "2. Show the students".center(@width)
    puts "3. Save the list to file".center(@width)
    puts "4. Load the list from file".center(@width)
    puts "9. Exit".center(@width)
end

def show_students
    if @students.empty?
        puts "No students available".center(@width)
    else
        print_header
        print_students_list
        print_footer
    end
end

def interactive_menu
    loop do
        print_menu
        process(STDIN.gets.chomp)
    end
end

def process(selection)
    case selection
        when "1"
            input_students
        when "2"
            show_students
        when "3"
            save_students
        when "4"
            puts "Please enter the file name (eg create.csv)"
            puts "Leave empty to load default 'student.csv' file"
            load_filename = gets.chomp
            if load_filename.empty?
                load_students
            else
                load_students(load_filename)
            end
            
        when "9"
            exit
        else
            puts "I don't know what you mean".center(@width)
    end
end

def input_students
    puts "Please enter the names of the students".center(@width)
    puts "To finish press return twice".center(@width)
    name = STDIN.gets.chomp
    while !name.empty? do
        add_student(name)
        puts "Now we have #{@students.count} students".center(@width)
        name = STDIN.gets.chomp
    end
end
def save_students
    puts "Please enter filename"
    filename = gets.chomp
    if filename.empty?
        filename = @default_filename
    end
    file = File.open(filename, "w")
    @students.each do |student|
        student_data = [student[:name], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    file.close
    puts "Saved file successfully".center(@width).upcase
end

def load_students(filename = @default_filename)
    file = File.open(filename, "r")
    file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
        add_student(name)
    end
    file.close
    puts "LOADED #{filename} SUCCESSFULLY".center(@width)
end

def try_load_students
    filename = ARGV.first 
    if filename.nil? 
        puts "Loaded default file: students.csv".center(@width)
        load_students
    elsif File.exist?(filename) 
      load_students(filename)
      puts "Loaded #{@students.count} from #{filename}".center(@width)
    else 
      puts "Sorry, #{filename} doesn't exist.".center(@width)
      exit 
    end
end


def add_student(name)
    @students << {name: name, cohort: :november}
end
interactive_menu
