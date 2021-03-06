defmodule RumblWeb.UserController do
  use RumblWeb, :controller #: prepares us to use the phoenix controller API

  alias Rumbl.User
  alias Rumbl.Repo
  def index(conn, _params) do
    # link up with Model Layer happens here
    users = Repo.all(User)
    render(conn, "index.html", users: users)
    #: From here we go to rumble_web/views/user_view.ex
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(User, id)
    render(conn, "show.html", user: user)
  end
end
