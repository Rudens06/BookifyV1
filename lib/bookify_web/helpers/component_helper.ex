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
    empty_stars = 5 - full_stars - (if half_star?, do: 1, else: 0)

    render_stars(full_stars, empty_stars, half_star?)
  end

  defp render_stars(0, 0, false), do: ""
  defp render_stars(full_stars, empty_stars, half_star?) do
    if full_stars > 0 do
      "<i class=\"material-icons\">star</i>" <> render_stars(full_stars - 1, empty_stars, half_star?)
    else
      if half_star? do
        "<i class=\"material-icons\">star_half</i>" <> render_stars(full_stars, empty_stars, false)
      else
        if empty_stars > 0 do
          "<i class=\"material-icons\">star_border</i>" <> render_stars(full_stars, empty_stars - 1, false)
        end
      end
    end
  end
end
