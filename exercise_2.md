# Task 2 - Karvonen Heart Rate

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

## Next: Task 3 - Sorting Records

[Go to task :arrow_right:](./exercise_3.md)