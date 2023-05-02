defmodule BookifyWeb.Plugs.SetUser do
  import Plug.Conn

  alias Bookify.Repo
  alias Bookify.User

  def init(_params) do
  end

  def call(conn, _params) do
    user_id = get_session(conn, :current_user_id)

    cond do
      user = user_id && Repo.get(User, user_id) ->
        user_pic = Bookify.Avatar.url({user.avatar, user}, signed: true)
        conn
        |> assign(:current_user, user)
        |> assign(:current_user_pic, user_pic)

      true ->
        assign(conn, :current_user, nil)
    end
  end
end
