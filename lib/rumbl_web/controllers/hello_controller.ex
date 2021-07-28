#: from rumble_web/router.ex we have come here
#: Here in controller layer Actions of HTTP req[verb/path] takes place
#: From this layer we talk to buisnedd domain code aka Model

defmodule RumblWeb.HelloController do
  use RumblWeb, :controller #: prepares us to use the phoenix controller API

  #: conn is a struct which holds a ton of data about the request
  #: _params has the request parameters (unused)
  def index(conn, _params) do
    #: it tells Phoenix to render
    render(conn, "hello.html")
    #: From here we go to rumble_web/views/hello_view.ex
  end

  #: second arg here is a map of inbound parameters
  #: keys to the params map is always strings so here string based matyching is used
  #: we match to capture the name key in the name variable
  #: in Phx we explicitly match on the string keys and then our application boundaries like
  #:    controllers and channels will convert them into atom keys
  def show(conn, %{"name" => user_value}) do
    render(conn, "show.html", name: user_value)
  end
end
