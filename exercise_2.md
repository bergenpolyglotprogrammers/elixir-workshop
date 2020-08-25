# Task 2 - Karvonen Heart Rate

_Source and credits: Exercises for Programmers (2015) by Brian P. Hogan_

### Focus

Input, Output, Loops, Math

### Description

The Karvonen heart rate formula is one method of determining your target heart rate when exercising to avoid overexerting yourself.

:pencil2: There are dependencies ready to be installed to help you with this exercise. Run `mix deps.get` in your terminal, while in the root of the `elixir_workshop` folder.  

:pencil2: Create a program that prompts for your age and your resting heart rate, then use the Karvonen forumla to determine the target heart rate based on intensities from 55% to 95%. Generate a table with the results.

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

### Useful code
#### Streams
[Streams](https://hexdocs.pm/elixir/Stream.html) can be useful to generate sequences in Elixir. They are lazy enumerables, allowing us to i.e map over the range without triggering an enumeration. 

For instance, if you wanted a stream with the numbers between `100` and `200` with an increment of 10, you might write something like this

```elixir
Stream.iterate(100, fn x -> x + 10 end)
|> Enum.take_while(fn x -> x <= 200 end)

# ..or in a shorter form

Stream.iterate(100, &(&1 + 10))
|> Enum.take_while(&(&1 <= 200))
```
Here we trigger enumeration by calling the `Enum.take_while`-function.

#### Mapping over enums

We often find the need to map over a collection of elements to create a new modified collection. This is simple in Elixir. Below are three examples who produce the same list of numbers.

```elixir
Enum.map(1..10, fn x -> x * 2 end)
# [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

1..10
|> Enum.map(fn x -> x * 2 end)
# [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

1..10
|> Enum.map(&(&1*2))
# [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
```

#### Iterating through collection

The `&Enum.each/2` function is useful for iterating through a collection without returning a new collection. It is useful in cases where you might want to iterate through a collection and print it to the console.

Here we map over an enum to create a tuple of its value and its square value, and use `&Enum.each/2` to print the values. The return value is simply the atom `:ok`.
```elixir
1..5
|> Enum.map(fn x -> {x, x * x} end)
|> Enum.each(fn {x, x_sqr} -> IO.puts("#{x}\t#{x_sqr}") end)
# 1       1
# 2       4
# 3       9
# 4       16
# 5       25
```

## Next: Task 3 - Sorting Records

[Go to task :arrow_right:](./exercise_3.md)