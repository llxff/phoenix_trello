defmodule PhoenixTrello.Board do
  use PhoenixTrello.Web, :model

  alias PhoenixTrello.{UserBoard, User}

  @derive { Poison.Encoder, only: [:id, :name, :user] }

  schema "boards" do
    has_many :user_boards, UserBoard
    has_many :members, through: [:user_boards, :user]

    field :name, :string
    belongs_to :user, User

    timestamps
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :user_id])
    |> validate_required([:name, :user_id])
  end
end
