defmodule BookifyWeb.Helpers.Time do

  def display_time(nil), do: nil
  def display_time(datetime) do
    string =
      datetime
      |> NaiveDateTime.truncate(:second)
      |> NaiveDateTime.to_string

    [_date | [time]] = String.split(string, " ", trim: true)
    [hours, minutes, _] = String.split(time, ":")
    hours <> ":" <> minutes
  end

  def display_date(nil), do: nil
  def display_date(datetime) do
    string =
      datetime
      |> NaiveDateTime.truncate(:second)
      |> NaiveDateTime.to_string

    [date | _time] = String.split(string, " ", trim: true)
    date
  end

  def from_now(nil), do: nil
  def from_now(timestamp) do
    current_datetime = DateTime.utc_now()
    time_diff = DateTime.diff(current_datetime, timestamp)

    if time_diff < 24 * 60 * 60 do
      hours =
        time_diff / (60 * 60)
        |> floor()
      "#{hours} hours ago"
    else
      days =
        time_diff / (24 * 60 * 60)
        |> floor()
      "#{days} days ago"
    end
  end
end
