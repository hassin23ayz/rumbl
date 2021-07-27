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

