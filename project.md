# Jeopardy

In this project you will make a Jeopardy-like trivia game using the open trivia API [jservice.io](http://jservice.io/). This API has many trivia questions in many categories that we can use to make a simple game.

## Familiarize yourself with the API

:pencil2: Go to [http://jservice.io/](http://jservice.io/) and read through the API specification.

In general, there are two endpoints of particular interest to us for this project:

- http://jservice.io/api/categories returns a list of all available categories.
- http://jservice.io/api/clues returns a list of clues or questions.

:pencil2: Go ahead and call all API endpoints yourself to familiarize yourself with the returned data. You can use whatever tools you want, be it cURL, [Fiddler](https://www.telerik.com/fiddler), [Postman](https://www.postman.com/), or anything else.

## Game requirements

The simple trivia game you're about to make should work something like this:

- It should run in the terminal (if you want to make a website out of it, that's fine too, but you should know what you're doing since it typically takes a lot more time to make a GUI).
- First, the game should ask for the player's name and hold the name in memory while the game is running.
- The player should then have the option to start a new game, see the leaderboard/high score list, or quit. Think of this as a main menu in the game. Once his game session is done or aborted, he should end up in the main menu again. If it seems complicated to make an actual menu inside a terminal, make it simple with, maybe like this, where we give the player the option to enter a specific letter to choose a menu option:

```
Enter a menu option:
- Start new game (G)
- See Leaderboard (L)
- Quit (Q)
> G
```

> Tip: In order for a player to end back up in the main menu until he chooses to quit, this should probably run in a while loop until Q is entered.

> :tada: Remember to have some fun! Throw in some [ASCII art](http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20) or something here, use some [console colors](https://www.c-sharpcorner.com/article/change-console-foreground-and-background-color-in-c-sharp/Images/ConsoleColors.jpg) or [try to play sounds on key presses or background music](https://askubuntu.com/questions/920539/how-to-play-a-sound-from-terminal). Just don't sink all your time on these things :sweat_smile:

## Game rules

- The player must answer 10 questions in one game session.
- Each question has a value or difficulty, just like Jeopardy. Higher value means harder question. Use the question's value to make up the player's total score.
- Just like Jeopardy, a player should be able to choose what category to be asked from, and the difficulty. Use the categories endpoint for this.
- The player can answer max 3 questions in the same category in each game session. With 10 questions total this means the player is forced to answer 3 questions from 3 different categories. The 10th question should be random (there is an API endpoint that returns a random question).
- When the player has answered 3 questions in a category, that category is disabled/unselectable in the categories list.

## Screens

- 1 main menu screen
- 2 game screens: Choosing a category from the list of categories, and answer questions from a category.
- 1 game summary screen: When a game is done the player should see a list of all questions answered, what his answers was, and the correct answers, along with his total score.
- 1 leaderboard screen: Lists the score of all game sessions that has been played. The state is stored as a file on disk.

## Implementation thoughts

- Judging correct answers is perhaps not straight forward here, as answers can be lengthy. A simple string A equals string B check will probably fail often since the player's answer string must match the API answer string exactly. You can do it this way if you want, but a suggestion is that when the player has entered his answer, you simply print the API answer to the screen as well, and leave it up to the player to judge whether his answer was correct or not. It also makes the game easier to test while you work on it.

It could look like this:

```
Question: 2009: "Some guys just can't handle Vegas"
Your answer:
> Hangover
Correct answer: The Hangover
Was your answer correct? (y/n):
> y
```

- Once the player has answered the 10th quesition, a summary of all questions and answers should be printed to the screen. When the player enters a keystroke, the current leaderboard should be shown. On the next keystroke the player is taken back to the "main menu" where he can play again, show the leaderboard, or quit.
- Remember to always show the player's current score and status when he's playing:

```
Current score: 1500 (question 4/10)
Current category: movie taglines (question 2/3 in this category)

Question: 1993: "An adventure 65 million years in the making"
Your answer:
>
```

- Remember to store the player's score in the leaderboard file on disk once his game session is done.
