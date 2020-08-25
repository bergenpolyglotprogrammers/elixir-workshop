defmodule Solutions.HeartRateTest do
  use ExUnit.Case
  alias Solutions.HeartRate
  doctest HeartRate

  test "get_target_heartrage returns correct karvonen heart rate" do
    age = 22
    resting_hr = 65
    intensity = 0.85

    expected_bpm = 178

    assert expected_bpm == HeartRate.get_target_heartrate(age, resting_hr, intensity)
  end


  test "create_heartrate_data creates tuples of intensity and heartrate" do
    age = 22
    resting_hr = 65
    heartrate_data =
      HeartRate.get_intensity_bpm_data(age, resting_hr)
      |> Enum.to_list()

    expected_first_intensity_bpm = {55, 138}
    expected_last_intensity_bpm = {95, 191}

    assert expected_first_intensity_bpm == List.first(heartrate_data)
    assert expected_last_intensity_bpm == List.last(heartrate_data)
  end
end
