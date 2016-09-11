defmodule PhoenixTrello.UserBoard do
  use PhoenixTrello.Web, :model

  alias PhoenixTrello.{User, Board}

  schema "user_boards" do
    belongs_to :user, User
    belongs_to :board, Board

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:user_id, :board_id])
    |> validate_required([:user_id, :board_id])
    |> unique_constraint(:user_id, name: :user_boards_user_id_board_id_index)
  end
end
