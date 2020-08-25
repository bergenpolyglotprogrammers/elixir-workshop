# Simple trivia game

In this project you will make a simple trivia game, using the open trivia API [jservice.io](http://jservice.io/). This API has many trivia questions in many categories that we can use to make a simple game.

In this project you will make a Jeopardy-like trivia game using the open trivia API [jservice.io](http://jservice.io/). This API has many trivia questions in many categories that we can use to make a simple game.

## Familiarize yourself with the API

:pencil2: Go to [http://jservice.io/](http://jservice.io/) and familiarize yourself with the API - specifically the `/Random` (`/api/random`) endpoint, which we will use to fetch random questions. 

:pencil2: Go ahead and call the API endpoint yourself to familiarize yourself with the returned data. You can use whatever tools you want, be it cURL, [Fiddler](https://www.telerik.com/fiddler), [Postman](https://www.postman.com/), or anything else.

## Game requirements

The simple trivia game you're about to make should work something like this:

- It should run in the terminal (if you want to make a website out of it, that's fine too, but you should know what you're doing since it typically takes a lot more time to make a GUI).
- The program should show a menu with choices to either:
    - Show a question and prompt for an answer
    - Show score
    - Exit program

- When a user selects *Show a question and prompt for an answer*, fetch a random from the `jservice.io` API and show it to the user, along with the number of points it's worth. After the question has been shown, prompt the user for an answer. It might be difficult to do actual string comparisons to verify a correct answer, so you could implement a second prompt which asks whether the answer was correct or not. If the question is correctly answered, the value of the question should be added to the users points.

- When a user selects *Show score*, the score of the user should be displayed in the terminal.

- When a user selects *Exit program*, the users points should be displayed and the program should terminate.

After each action, the menu should be printed and prompt the user for a new action. 

The program might look something like this:
```
Enter a meny option:
1 - Show random question
2 - Show score
3 - Quit
1

For 800 points:

        In 1965 the Univ. of Florida football team began using this drink developed by school researchers

        Answer: Gatorade
        The correct answer is: Gatorade

        Was your answer correct? (y/n): y

Enter a meny option:
1 - Show random question
2 - Show score
3 - Quit
2

Your score is now 800 points
Enter a meny option:
1 - Show random question
2 - Show score
3 - Quit
3

Thank you for playing. You achieved 800 points
```

> :tada: Remember to have some fun! Throw in some [ASCII art](http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20) or something here, use some [console colors](https://dennisbeatty.com/2019/03/12/cool-clis-in-elixir-part-2-with-io-ansi.html).

# Let's play jeopardy!

If you gotten this far, you might want a larger project to work on. In this part, you will make a much more advanced Jeopardy-like trivia application.

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