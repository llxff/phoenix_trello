defmodule PhoenixTrello.PageControllerTest do
  use PhoenixTrello.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Phoenix Trello"
  end
end
