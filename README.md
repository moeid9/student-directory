# Student-directory

This student directory script allows you to manage the list of students at Villains Academy.

## How to use
``` shell
ruby directory.rb
```

## Exercises - Step 8
1. We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? - [Commit b573ded](https://github.com/moeid9/student-directory/commit/b573ded7265f4ee8da085f0448be56c8b8bca10c)
2. Modify your program to only print the students whose name begins with a specific letter. - [Commit abf18e9](https://github.com/moeid9/student-directory/commit/abf18e9e6b13d358f1496f3e750fccec9cd8d175)
3. Modify your program to only print the students whose name is shorter than 12 characters. - [Commit 316114f](https://github.com/moeid9/student-directory/commit/316114f8d6366f8c833c80132f8cd803b4889f7c)
4. Rewrite the each() method that prints all students using while or until control flow methods. - [Commit e939a18](https://github.com/moeid9/student-directory/commit/e939a18acee4a9df351239bd8c0bb333d9525635)
5. Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc. - [Commit 17e649d](https://github.com/moeid9/student-directory/commit/17e649df2a8064b2efbdec2f0c20f74da4c3f413)
6. Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned. - [Commit f75e331](https://github.com/moeid9/student-directory/commit/f75e3312901aef504f0f96a44b387b4ac6f30809)
7. In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo? - [Commit e1ac20e](https://github.com/moeid9/student-directory/commit/e1ac20e79432837c22c9155ebf3a41733a7aee90)
8. Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort. - [Commit cd1452d](https://github.com/moeid9/student-directory/commit/cd1452db3dec4f8a4fcb5a2e9667a5a62a69b770)
9. Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it uses the singular form when appropriate and plural form otherwise? - [Commit e5f8630](https://github.com/moeid9/student-directory/commit/e5f86306f6febc136046510d5bb118887b448bfe)
10. We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments). - [Commit 73d0093](https://github.com/moeid9/student-directory/commit/73d009358b05941c9ebf6fca87aa7bbf3748a644)
11. Once you have completed the "Asking for user input" section, open [this file](https://raw.githubusercontent.com/anitacanita/student-directory/master/typos.rb). It's Ruby code but it has some typos. Copy it to a local file and open it in Atom without syntax highlighting. To do this, select "Plain Text" in the lower right corner of the window. Now, find all typos in that file and correct them. Use your experience, online documentation, etc. to find all mistakes. Run the script in the terminal from time to time to make sure it works as it should. Google the errors Ruby will give you, think about what they could mean, try different things but don't look the answer up. - [Commit d20e2f6](https://github.com/moeid9/student-directory/commit/d20e2f6a92ed27d17bb7fea236179e66c8cb4453)
12. What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an if statement to only print the list if there is at least one student in there? - [Commit ae28561](https://github.com/moeid9/student-directory/commit/ae2856115aeb994e5fe9d160bab65952f63a24f1)
