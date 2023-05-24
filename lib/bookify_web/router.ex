defmodule BookifyWeb.Router do
  use BookifyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {BookifyWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug BookifyWeb.Plugs.SetUser
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BookifyWeb do
    pipe_through :browser

    get "/", BookController, :index
    get "/books/new", BookController, :new
    post "/books", BookController, :create
    get "/books/:id/edit", BookController, :edit
    put "/books/:id", BookController, :update
    delete "/books/:id/delete", BookController, :delete
    get "/books/:id", BookController, :show
    get "/top_books", BookController, :top_books

    resources "/authors", AuthorController

    resources "/registrations", UserController, only: [:new, :create]

    get "/signin", AuthController, :new
    post "/signin", AuthController, :signin
    delete "/signout", AuthController, :signout

    get "/account", AccountController, :index
    get "/account/profile/edit", AccountController, :edit_profile
    put "/account/profile", AccountController, :update_profile
    get "/account/password/edit", AccountController, :edit_password
    put "/account/password", AccountController, :update_password
    put "/account/update_avatar", AccountController, :update_avatar

    get "/lists", ListController, :index
    get "/lists/add/:type/:id", ListController, :add_book_to_list
    get "/lists/remove/:type/:id", ListController, :remove_book_from_list

    post "/review/:book_id", ReviewController, :create
    delete "/review/:book_id/:review_id/delete", ReviewController, :delete
    delete "/review/:review_id/delete", ReviewController, :delete

    get "/admin", AdminController, :reviews
    get "/admin/users", AdminController, :users
    get "/admin/user/:id", AdminController, :show

  end

  # Other scopes may use custom stacks.
  # scope "/api", BookifyWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:bookify, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: BookifyWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
