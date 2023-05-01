defmodule BookifyWeb.Helpers.List do
  def want_to_read_list_type do
    "want_to_read"
  end

  def reading_list_type do
    "reading"
  end

  def has_read_list_type do
    "has_read"
  end

  def convert_to_readable(list_type) do
    case list_type do
      "want_to_read" -> "Want to Read list"
      "reading" -> "Reading list"
      "has_read" -> "Read Books list"
    end
  end
end
