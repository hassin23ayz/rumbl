#: From rumbl_web/controllers/user_controller.ex we have come here
# views are modules responsible for rendering
# Templates are web pages or fragments that allow both static markup and native code to build response pages
defmodule RumblWeb.UserView do
  use RumblWeb, :view
  alias Rumbl.User
  #: now we need to go to rumbl_web/templates directory and
  #: (1)create rumbl_web/templates/user folder
  #: (2)create rumbl_web/templates/user/index.html.eex  [ it can access this module's function]

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
    end
end
