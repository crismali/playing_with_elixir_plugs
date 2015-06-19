defmodule UsersRouterTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias Pl.UsersRouter

  @opts UsersRouter.init([])

  test "returns rooooooot" do
    # Create a test connection
    conn = conn(:get, "/")

    # Invoke the plug
    conn = UsersRouter.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "rooooooot"
  end
end
