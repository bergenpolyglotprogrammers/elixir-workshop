defmodule Solutions.Trivia.GameMenu do

  @spec handle_menu_input :: :quit | :show_question | :show_score
  def handle_menu_input() do
    choice =
      IO.read(:stdio, :line)
      |> String.trim()

    case choice do
      "1" -> :show_question
      "2" -> :show_score
      "3" -> :quit
      _ ->
        IO.puts("\nCould not recognize input, please try again.")
        print_menu()
        handle_menu_input()
    end
  end

  @spec print_menu :: :ok
  def print_menu() do
    IO.puts("Enter a meny option: ")
    IO.puts("1 - Show random question")
    IO.puts("2 - Show score")
    IO.puts("3 - Quit")
  end
end
