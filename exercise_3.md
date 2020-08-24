# Task 3 - Sorting Records

_Source and credits: Exercises for Programmers (2015) by Brian P. Hogan_

### Focus

Input, Output, Objects, Sorting, Lists

### Description

Given the following data set:

| First name | Last name  | Position          | Hired date |
| ---------- | ---------- | ----------------- | ---------- |
| John       | Johnson    | Manager           | 2016-08-05 |
| Tou        | Xiong      | Software Engineer | 2016-10-05 |
| Michaela   | Michaelson | District Manager  | 2015-07-04 |
| Jake       | Jackson    | Software Engineer | 2010-10-14 |

create a program that sorts all employees by last name and prints them to the terminal in a tabular format.

### Example output

```
Name                |   Position          | Hired date
--------------------|---------------------|------------
Jake Jackson        | Software Engineer   | 2010-10-14
John Johnson        | Manager             | 2016-08-05
Michaela Michaelson | District Manager    | 2015-07-04
Tou Xiong           | Software Engineer   | 2016-10-05
```

Don't stress with exact tabular output if the language's standard library does not include support for it. The goal of the exercise is sort a list of objects and print the output. 

If you would like to continue without writing logic for the tables, there is a library included in the `elixir_workshop` project called `Scribe`, which will pretty-print your data for you, and long as it is a list of structs. 

```elixir
data = [%{firstname: "John", lastname: "Doe"}]
Scribe.print(data)

# +--------------+-------------+
# | :firstname   | :lastname   |
# +--------------+-------------+
# | "John"       | "Doe"       |
# +--------------+-------------+
```

### Part 2 - Filtering

Modify the program to only print employees who are software engineers

### Example output

```
Name                |   Position          | Hired date
--------------------|---------------------|------------
Jake Jackson        | Software Engineer   | 2010-10-14
Tou Xiong           | Software Engineer   | 2016-10-05
```

### Part 3 - Sorting

Modify the program to sort the employees by their hired date, in ascending order.

```
Name                |   Position          | Hired date
--------------------|---------------------|------------
Jake Jackson        | Software Engineer   | 2010-10-14
Michaela Michaelson | District Manager    | 2015-07-04
John Johnson        | Manager             | 2016-08-05
Tou Xiong           | Software Engineer   | 2016-10-05
```

### :star: Bonus: Interactive search

Can you write a program where you enter a search term and return all the employees whose name contains your search term.


```
Enter your search term: J

Name                |   Position          | Hired date
--------------------|---------------------|------------
Jake Jackson        | Software Engineer   | 2010-10-14
John Johnson        | Manager             | 2016-08-05
```

Feel free to modify the program into what ever you would like. Add more employees, add them interactively, wrangle the data.... Have fun! 

## Next: Project - Jeopardy
Next, we are going to move onto a larger project - Jeopary! 

[Go to project :arrow_right:](./project.md)
