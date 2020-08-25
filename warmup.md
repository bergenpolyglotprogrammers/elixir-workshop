# Warmup exercise - The `IEx` REPL

Installing Elixir on your computer also adds an interactive REPL that you can use to evaluate Elixir code. 

:pencil2: In you terminal, start IEx by typing `iex`. Try executing some code, such as multiplying numbers or concatinating strings.

E.g.
```
Interactive Elixir (1.10.4) - press Ctrl+C to exit
iex(1)> 40 + 2
42
iex(2)> "hello" <> " world"
"hello world"
```

To exit IEx, use the `CTRL + C` key combinations. 

## Running a script in IEx

You can load the files of your mix project into a IEx session by typing `iex -S mix` while you are inside the root folder of your project.

:pencil2: Load the `elixir_workshop` project into an IEx session. Execute the script in `lib/warmup.ex` by typing `Warmup.greet`. 

:pencil2: Can you make modifiations and add methods to the warmup script? Be creative, add a method and do some funky stuff. Get comfortable with the REPL. It is very useful! 

After making a change, you can type `recompile` in the REPL to compile your project and make new changes available. 

:bulb: In the next exercises, you can either execute your scripts using the IEx REPL, or run them using `mix run -e <ModuleName>.<Function>`. 