defmodule Jeopardy.QuestionHandler do
  alias Jeopardy.{GameMenu, JServiceIO}

  @spec next_question(any) :: {:ok, pos_integer()} | {:quit, pos_integer()} | {:show_score, pos_integer()}
  def next_question(points) do
    case GameMenu.handle_menu_input() do
      :show_question ->
        question = JServiceIO.get_random_question!()
        correct_answer = play_question(question)

        case correct_answer do
          true  -> {:ok, points + question.value}
          false -> {:ok, points}
        end
      :quit -> {:quit, points}
      output -> {output, points}
    end
  end

  defp play_question(question) do
    %{
      value: value,
      question: question,
      answer: answer
    } = question

    IO.puts("For #{value} points:\n")
    IO.puts("\t#{question}\n")
    IO.gets("\tAnswer: ")
    IO.puts("\tThe correct answer is: #{answer}\n")

    correct =
      IO.gets("\tWas your answer correct? (y/n): ")
      |> String.trim()
      |> String.downcase()
      |> String.equivalent?("y")
    correct
  end

end
