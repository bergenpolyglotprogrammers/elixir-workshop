defmodule Solutions.Trivia.JServiceIO do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jservice.io/api"
  plug Tesla.Middleware.JSON

  def get_random_question!() do
    {:ok, %Tesla.Env{ body: [body] }} = get("/random")
    %{
      "value" => value,
      "question" => question,
      "answer" => answer,
      "category" => %{
        "title" => category_title}
      } = body

    %{
      value: value,
      question: question,
      category: category_title,
      answer: answer
    }
  end
end
