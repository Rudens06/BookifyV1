defmodule BookifyWeb.AccountController do
  use BookifyWeb, :controller

  import BookifyWeb.Helpers.User

  alias Bookify.User
  alias Bookify.Accounts

  plug BookifyWeb.Plugs.RequireAuth when action in [:index, :update_name, :update_password, :edit_name, :edit_password]

  def index(conn, _params) do
    assign(conn, :page_title, "Register")
    case get_session(conn, :current_user_id) do
      nil ->
        redirect(conn, to: Routes.user_path(conn, :new))
      _ ->
        render(conn, :index)
    end
  end

  def edit_profile(conn, _params) do
    changeset = User.edit_profile_changeset(current_user(conn))
    avatar_changeset = User.avatar_changeset(current_user(conn))
    conn
    |> assign(:page_title, "Edit Profile")
    |> assign(:avatar_changeset, avatar_changeset)
    |> assign(:changeset, changeset)
    |> render(:edit_profile)
  end

  def edit_password(conn, _params) do
    changeset = User.changeset(current_user(conn))

    conn
    |> assign(:page_title, "Change Password")
    |> assign(:changeset, changeset)
    |> render(:edit_password)
  end

  def update_profile(conn, %{"user" => user_params}) do
    changeset = User.edit_profile_changeset(current_user(conn), user_params)

    case Accounts.update(changeset) do
      {:ok, _topic} ->
        conn
        |> put_flash(:info, "Profile updated Successfully")
        |> redirect(to: Routes.account_path(conn, :index))
      {:error, changeset} ->
        conn
        |> assign(:changeset, changeset)
        |> render(:edit_profile)
    end
  end

  def update_password(conn, %{"user" => user_params}) do
    changeset = User.edit_password_changeset(current_user(conn), user_params)

    case Bcrypt.check_pass(current_user(conn), user_params["current_password"], [hash_key: :hashed_password]) do
      {:ok, _user} ->
        case Accounts.update(changeset) do
          {:ok, _user} ->
            conn
            |> put_flash(:info, "Password updated successfully!")
            |> redirect(to: Routes.account_path(conn, :index))
          {:error, changeset} ->
            conn
            |> assign(:changeset, changeset)
            |> render(:edit_password)
        end

      {:error, _} ->
        conn
        |> put_flash(:error, "Wrong current password")
        |> assign(:changeset, changeset)
        |> render(:edit_password)
    end
  end

  def update_avatar(conn, %{"user" => user_params}) do
    changeset = User.edit_profile_changeset(current_user(conn), user_params)

    case Accounts.update_user_avatar(current_user(conn), user_params) do
      {:ok, _user} ->
        conn
        |> put_flash(:info, "Avatar updated successfully.")
        |> redirect(to: Routes.account_path(conn, :index))

      {:error, changeset} ->
        conn
        |> assign(:changeset, changeset)
        |> assign(:avatar_changeset, changeset)
        |> render(:edit_profile)
    end
  end

end
