defmodule BookifyWeb.Helpers.Component do
  alias BookifyWeb.Helpers.IconHelper

  def default_btn() do
    "btn orange darken-2"
  end

  def cancel_btn() do
    "btn red"
  end

  def review_btn() do
    "btn green"
  end

  def rating_stars(nil), do: nil

  def rating_stars(rating) do
    full_stars = trunc(rating)
    decimal = rating - full_stars
    half_star? = if decimal >= 0.5, do: true, else: false

    render_stars(full_stars, half_star?)
  end

  defp render_stars(full_stars, half_star?) do
    cond do
      full_stars > 0 ->
        {_, icon} = IconHelper.full_star()
        icon <> render_stars(full_stars - 1, half_star?)

      half_star? ->
        {_, icon} = IconHelper.half_star()
        icon <> render_stars(full_stars, false)

      true ->
        ""
    end
  end
end
