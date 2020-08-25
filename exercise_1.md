# Task 1 - Password validation

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

---

### Useful code

Here are some code snippets that you might find useful for this task.

#### Creating a module with a function

```elixir
defmodule MyModule do
  def my_func() do

  end
end
```

You can call this function from the terminal by moving to the folder of your mix project and typing `mix run -e MyModule.my_func` or loading the project into the IEx REPL, writing `iex -S mix` and running it by typing `MyModule.my_func`. This is not the canonical way of starting an elixir production application, but we will run our programs this way for now, for simplicity's sake. 

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

## Next: Task 2 - Karvonen Heart Rate

[Go to task :arrow_right:](./exercise_2.md)
