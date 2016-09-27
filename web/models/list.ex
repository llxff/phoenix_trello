defmodule PhoenixTrello.List do
  use PhoenixTrello.Web, :model

  alias PhoenixTrello.{Board, List, Card}

  @derive {Poison.Encoder, only: [:id, :board_id, :name, :cards]}

  schema "lists" do
    field :name, :string
    belongs_to :board, Board
    has_many :cards, Card

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
