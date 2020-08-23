# Exercise Set 1

:bulb: If you want to use the starter project created for this workshop, you should find a `.ex`-file in for each of the exercises in the `elixir_workshop/lib/` folder. 

For simplicity, we are just going to keep all the exercises in one project. To run a module with a spesific function, run `mix run -e <modulename>.<function>`. E.g, for the first exercise, you can run `mix run -e PasswordValidation.run`, where `run` would be your entry point.

## 1 - Password validation

_Source and credits: Exercises for Programmers (2015) by Brian P. Hogan_

### Focus

Input, Output, Arguments, Environment Variables, Conditionals

### Description

:pencil2: Create a simple program that prompts for a username and password (via stdin). When you run the program, pass an argument to the program or set an environment variable with a valid password and compare the valid password in args or env with the one entered through prompt/stdin. If they match, show a success message. If they do not match, show a failure message.


### Example output

```
(no match)

What is the password? 123456
Incorrect

(match)

What is the password? 111111
Welcome!
```


### Example code
#### Reading user input

Example of two ways to get user input from a console.
```elixir
name = IO.gets("Enter your name: ")

# Alternatively, separate it into two parts.

IO.puts("Enter your name:")
name = IO.read(:stdio, :line)
```

#### Reading an environment variable

Environment variables that are set have their values returned. 
Environment variables not set returns `nil`.
```elixir
my_variable = System.get_env("variable_which_is_set")
nil_variable = System.get_env("not_set")
```

Combining environment variables and user input. Use env-vars if they are set, else prompt user.
```elixir
username = case System.get_env("username") do
    nil -> IO.gets("Enter your username: ")
    env_var -> env_var
end
```
:bulb: See *case, cond and if*  at [elixir-lang.org](https://elixir-lang.org/getting-started/case-cond-and-if.html) if you want to see more about how control structures can be used in Elixir. 

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
