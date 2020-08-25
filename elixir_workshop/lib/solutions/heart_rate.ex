defmodule Solutions.HeartRate do

  def run() do
    {resting_hr, _} =
      IO.gets("Enter your resting pulse: ")
      |> String.trim()
      |> Integer.parse()

    {age, _} =
      IO.gets("Enter your age: ")
      |> String.trim()
      |> Integer.parse()

    get_intensity_bpm_data(age, resting_hr)
    |> create_heartrate_table()
  end

  def get_intensity_bpm_data(age, resting_hr) do

    Stream.iterate(55, fn x -> x + 5 end)
    |> Enum.take_while(fn x -> x <= 95 end)
    |> Enum.map(fn intensity ->
      target_heartrate = get_target_heartrate(age, resting_hr, intensity / 100)
      {intensity, target_heartrate}
    end)

  end

  def create_heartrate_table(intensity_bpm_tuples) do
    IO.puts("Intensity\t|\tRate")

    intensity_bpm_tuples
    |> Enum.map(fn {intensity, heartrate} -> "#{intensity}%\t\t|\t#{heartrate} bpm" end)
    |> Enum.each(&(IO.puts(&1)))
  end

  def get_target_heartrate(age, resting_hr, intensity) do
    (((220 - age) - resting_hr) * intensity) + resting_hr
    |> Float.round(0)
    |> trunc()
  end
end
