defmodule Rumbl.Repo do
  # use Ecto.Repo,
  #   otp_app: :rumbl,
  #   adapter: Ecto.Adapters.Postgres

  @moduledoc """
  In memory Repository
  A repository is an API for holding things
  Here we will be implementing a hard coded database
  """
  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "Jose",  username: "elixir", password: "josevalim"},
      %Rumbl.User{id: "2", name: "Chris", username: "Phoenix", password: "cmcord"},
      %Rumbl.User{id: "3", name: "Bruce", username: "7langs", password: "redrapids"},
    ]
  end

  def all(_), do: []

  #get a map from the list by id key value
  def get(module, id) do
    # Enum.find all(module), fn map -> map.id == id end
    Enum.find(all(module), fn map -> map.id == id end)
  end

  #get a map from the list by {key, val}
  def get_by(module, params) do
    Enum.find(all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val
      end)
    end)
  end

end
