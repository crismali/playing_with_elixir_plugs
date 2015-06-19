defmodule Pl.UsersRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "rooooooot")
  end

  get "/admin" do
    send_resp(conn, 200, "super admin")
  end
end
