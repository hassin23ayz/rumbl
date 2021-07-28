# PhoenixT
 $ elixir -v
 $ mix local.hex
 $ psql --version
 $ sudo apt install postgresql-client-common
 $ sudo apt install postgresql-client-12
 $ sudo apt install nodejs
 $ sudo apt install npm
 $ sudo apt-get install inotify-tools
 $ mix archive.install hex phx_new 1.5.9
 $ mix phx.new phoenix_t

 $ sudo apt install postgresql postgresql-contrib
 $ sudo apt-get install net-tools
 $ sudo service postgresql restart
 $ sudo netstat -nlp | grep 5432
 $ pg_isready
 $ ps axf | grep postgres

[ref https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database] 
$ sudo -u postgres psql
postgres=# CREATE USER phoenix_t WITH PASSWORD 'phoenix_t';
postgres=# ALTER ROLE phoenix_t CREATEDB;
ALTER ROLE
postgres=# ALTER ROLE phoenix_t LOGIN;
ALTER ROLE
postgres=# exit
$exit

At config/dev.ex : update username and password to phoenix_t

$ cd phoenix_t/
$ mix ecto.create
$ mix phx.server

http://localhost:4000/ 

CTRL+C double to exit from server

## Plug Theory 

- Phx = Lot of small functions 
  We tie all these function together with Plug Library 

- Each plug consumes and produces a common data structure called Plug.Conn 
  each individual plug as a function takes a conn and returns a slightly changed conn 

- Plugs are functions . web app is pipelines of plugs 

- Plug.Conn -> Plug_func() -> modified Plug.Conn -> Plug_func() -> modified Plug.Conn .....

- The web server provides the initial data for our request , then phoenix calls one plug after another. 
  Each Plug can transform the conn in some small way until you eventually send a response back to the user 

## Phx File Structure

- Phx has similar structure like Elixir Application (All Mix project have a common structure)
- .ex files gets compiled to .beam files later run on the Erlang Virtual Machine

-every traditional Phoenix application looks like this

connection
 |> endpoint
 |> router   [verb/path]
 |> pipeline [:browser , :api]
 |> controller [action] 
 |> view
 |> template [html, js]

 


