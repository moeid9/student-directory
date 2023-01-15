# Student-directory

This student directory script allows you to manage the list of students at Villains Academy.

## How to use
``` shell
ruby directory.rb
```

## Exercises - Step 8
1. We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? - Commit b573ded
2. Modify your program to only print the students whose name begins with a specific letter. - Commit abf18e9
3. Modify your program to only print the students whose name is shorter than 12 characters. - [Commit 316114f](https://github.com/moeid9/student-directory/commit/316114f8d6366f8c833c80132f8cd803b4889f7c)
4. Rewrite the each() method that prints all students using while or until control flow methods. - Commit e939a18
5. Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc. - Commit 17e649d
6. Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned. - Commit f75e331
7. In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo? - Commit e1ac20e
8. Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort. - Commit cd1452d
