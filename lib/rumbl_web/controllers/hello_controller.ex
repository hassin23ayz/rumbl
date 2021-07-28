#: from rumble_web/router.ex we have come here
#: Here in controller layer Actions of HTTP req[verb/path] takes place
#: From this layer we talk to buisnedd domain code aka Model

defmodule RumblWeb.HelloController do
  use RumblWeb, :controller

  #: conn is a struct which holds a ton of data about the request
  #: _params has the request parameters (unused)
  def index(conn, _params) do
    #: it tells Phoenix to render
    render(conn, "hello.html")
    #: From here we go to rumble_web/views/hello_view.ex
  end

  #: keys to the params map is always strings
  #: extract the stranger from the params & pass to template
  def show(conn, %{"stranger" => stranger}) do
    render(conn, "show.html", stranger: stranger)
  end
end
