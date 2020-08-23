# Exercise Set 1

## 1 - Password validation

_Source and credits: Exercises for Programmers (2015) by Brian P. Hogan_

### Focus

Input, Output, Arguments, Environment Variables, Conditionals

### Description

Create a simple program that prompts for a username and password (via stdin). When you run the program, pass an argument to the program or set an environment variable with a valid password and compare the valid password in args or env with the one entered through prompt/stdin. If they match, show a success message. If they do not match, show a failure message.

:bulb2: If you want to use the starter project created for this workshop, use the file `password_validation.ex` in `elixir_workshop/lib/`. To run the module, write `mix run -e PasswordValidation.run`.   

### Example output

```
(no match)

What is the password? 123456
Incorrect

(match)

What is the password? 111111
Welcome!
```

## 2 - Karvonen Heart Rate

_Source and credits: Exercises for Programmers (2015) by Brian P. Hogan_

### Focus

Input, Output, Loops, Math

### Description

The Karvonen heart rate formula is one method of determining your target heart rate when exercising to avoid overexerting yourself.
Create a program that prompts for your age and your resting heart rate, then use the Karvonen forumla to determine the target heart rate based on intensities from 55% to 95%. Generate a table with the results.

Use a loop to cover all 5% increases in intensity and not a hard-coded set of input prompts.

The formula:

```
TargetHeartRate = (((220 - age) - restingHR) * intensity) + restingHR
```

### Example output

```
Resting pulse: 65
Age: 22

Intensity   |   Rate
55%         |   138 bpm
60%         |   145 bpm
65%         |   151 bpm
 .          |    .
 .          |    .
85%         |   178 bpm
90%         |   185 bpm
95%         |   191 bpm
```

## 3 - Sorting Records

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

(Don't stress with exact tabular output if the language's standard library does not include support for it. The goal of the exercise is sort a list of objects and print the output)

### Part 2 - Filtering

Modify the program to only print employees who are software engineers

### Example output

```
Name                |   Position          | Hired date
--------------------|---------------------|------------
Jake Jackson        | Software Engineer   | 2010-10-14
Tou Xiong           | Software Engineer   | 2016-10-05
```

## Project - Jeopardy

[Go to project :arrow_right:](./project.md)
