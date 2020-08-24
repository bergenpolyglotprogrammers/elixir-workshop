defmodule SortingRecords do
  @employees [
    %{firstname: "John", lastname: "Johnson", position: "Manager", hired_date: ~D[2016-08-05]},
    %{firstname: "Tou", lastname: "Xiong", position: "Software Engineer", hired_date: ~D[2016-10-05]},
    %{firstname: "Michaela", lastname: "Michaelson", position: "District Mananger", hired_date: ~D[2015-07-04]},
    %{firstname: "Jake", lastname: "Jackson", position: "Software Engineer", hired_date: ~D[2010-10-14]},
  ]

  def run() do
    Scribe.print(@employees)
  end
end
