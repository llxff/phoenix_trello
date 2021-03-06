defmodule PhoenixTrello.UserBoardTest do
  use PhoenixTrello.ModelCase

  alias PhoenixTrello.UserBoard

  @valid_attrs %{user_id: 1, board_id: 2}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UserBoard.changeset(%UserBoard{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UserBoard.changeset(%UserBoard{}, @invalid_attrs)
    refute changeset.valid?
  end
end
