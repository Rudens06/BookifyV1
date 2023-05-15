defmodule BookifyWeb.Helpers.Time do

  def display_time(datetime) do
    string =
      datetime
      |> NaiveDateTime.truncate(:second)
      |> NaiveDateTime.to_string

    [_date | [time]] = String.split(string, " ", trim: true)
    [hours, minutes, _] = String.split(time, ":")
    hours <> ":" <> minutes
  end

  def display_date(datetime) do
    string =
      datetime
      |> NaiveDateTime.truncate(:second)
      |> NaiveDateTime.to_string

    [date | _time] = String.split(string, " ", trim: true)
    date
  end
end
