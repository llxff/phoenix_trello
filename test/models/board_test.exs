defmodule PhoenixTrello.BoardTest do
  use PhoenixTrello.ModelCase

  alias PhoenixTrello.Board

  @valid_attrs %{name: "some content", user_id: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Board.changeset(%Board{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Board.changeset(%Board{}, @invalid_attrs)
    refute changeset.valid?
  end

  test ".slug_id" do
    board = %Board{id: 1}

    assert Board.slug_id(board) == "1"
  end
end
