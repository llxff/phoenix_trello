defmodule PhoenixTrello.List do
  use PhoenixTrello.Web, :model

  schema "lists" do
    field :name, :string
    belongs_to :board, PhoenixTrello.Board

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
