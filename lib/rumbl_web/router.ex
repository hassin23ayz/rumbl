#: responsible for dispatching verb/path to controllers
#: allows us to scope functionality, e.g some pages may require authentication

defmodule RumblWeb.Router do
  use RumblWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RumblWeb do
    pipe_through :browser

    get "/", PageController, :index

    #: from rumble_web/endpoint.ex we have come here
    #: Adding a new Route
    #: HTTP requests [verb/path] matching happens here
    get "/hello", HelloController, :index
    #: From here we go to rumble_web/controllers/hello_controller.ex index() action function

    #: adding a new [verb/path] capable of passing variable
    get "/hello/:stranger", HelloController, :show
    #: From here we go to rumble_web/controllers/hello_controller.ex show() action function
  end

  # Other scopes may use custom stacks.
  # scope "/api", RumblWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: RumblWeb.Telemetry
    end
  end
end
