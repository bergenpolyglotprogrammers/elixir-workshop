defmodule Solutions.SortingRecords do
  @employees [
    %{firstname: "John", lastname: "Johnson", position: "Manager", hired_date: ~D[2016-08-05]},
    %{firstname: "Tou", lastname: "Xiong", position: "Software Engineer", hired_date: ~D[2016-10-05]},
    %{firstname: "Michaela", lastname: "Michaelson", position: "District Mananger", hired_date: ~D[2015-07-04]},
    %{firstname: "Jake", lastname: "Jackson", position: "Software Engineer", hired_date: ~D[2010-10-14]},
  ]

  def run() do
    @employees
    |> sort_by_lastname()
    |> get_software_engineers()
    |> print_employees()
  end

  def get_software_engineers(employees) do
    Enum.filter(employees, fn %{position: position} -> position == "Software Engineer" end)
  end

  def sort_by_lastname(employees, order \\ :asc) do
    Enum.sort_by(employees, fn %{lastname: lastname} -> lastname end, order)
  end

  def print_employees(employees) do
    Scribe.print(employees)
  end
end
