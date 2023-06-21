defmodule BookifyWeb.Helpers.Component do
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

  defp render_stars(0, 0, false), do: ""

  defp render_stars(full_stars, half_star?) do
    cond do
      full_stars > 0 ->
        "<i class=\"material-icons\">star</i>" <>
          render_stars(full_stars - 1, half_star?)

      half_star? ->
        "<i class=\"material-icons\">star_half</i>" <> render_stars(full_stars, false)

      true ->
        ""
    end
  end
end
