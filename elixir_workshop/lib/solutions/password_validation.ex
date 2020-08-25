defmodule Solutions.PasswordValidation do
  def run() do
    username = case System.get_env("elixir_username") do
      nil -> get_input("Enter the correct username:\n")
      env_var -> env_var
    end

    password = case System.get_env("elixir_password") do
      nil -> get_input("Enter the correct password:\n")
      env_var -> env_var
    end

    IO.puts(IO.ANSI.clear())
    verify_credentials(username, password)
  end

  def verify_credentials(correct_username, correct_pw) do
    username = get_input("Enter username:\n")
    password = get_input("Enter password:\n")

    if {username, password} == {correct_username, correct_pw} do
      IO.puts("That's right!")
    else
      IO.write("That's not correct!\n")
      verify_credentials(correct_username, correct_pw)
    end
  end

  defp get_input(input_description) do
    IO.gets(input_description)
    |> String.trim()
  end
end
