defmodule BookifyWeb.Helpers.Numbers do
  def round_to_two_decimal_places(number) do
    :erlang.round(number * 100) / 100.0
  end
end
