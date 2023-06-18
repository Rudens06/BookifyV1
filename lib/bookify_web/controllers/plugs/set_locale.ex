defmodule BookifyWeb.Plugs.SetLocale do
  import Plug.Conn

  @supported_locales Gettext.known_locales(BookifyWeb.Gettext)

  def init(_options), do: nil

  def call(conn, _options) do
    case fetch_locale_from(conn) do
      nil ->
        conn

      locale ->
        BookifyWeb.Gettext |> Gettext.put_locale(locale)
        conn |> put_resp_cookie("locale", locale, max_age: 365 * 24 * 60 * 60)
    end
  end

  defp fetch_locale_from(conn) do
    (conn.params["locale"] ||
       conn.cookies["locale"] ||
       fetch_locale_from_headers(conn))
    |> check_locale
  end

  defp check_locale(locale) when locale in @supported_locales, do: locale
  defp check_locale(_), do: nil

  defp fetch_locale_from_headers(conn) do
    conn
    |> get_req_header("accept-language")
    |> List.first()
    |> String.split(",")
    |> List.first()
    |> String.split(";")
    |> List.first()
    |> String.split("-")
    |> List.first()
  end
end
