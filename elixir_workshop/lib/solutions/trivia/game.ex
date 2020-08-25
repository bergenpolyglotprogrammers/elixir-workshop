defmodule Solutions.Trivia.Game do
  alias Solutions.Trivia.{GameMenu, QuestionHandler}

  def run(), do: game_loop(0)

  defp game_loop(points) do
    GameMenu.print_menu()
    {status, points} = QuestionHandler.next_question(points)

    text_output = case status do
      :quit -> "Thank you for playing. You achieved #{points} points"
      :show_score -> "Your score is now #{points} points"
      _ -> ""
    end

    IO.puts(text_output)
    if status != :quit do
      game_loop(points)
    end
  end
end
