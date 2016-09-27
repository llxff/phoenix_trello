defmodule PhoenixTrello.Card do
  use PhoenixTrello.Web, :model

  alias PhoenixTrello.{Repo, List, Card}

  @derive {Poison.Encoder, only: [:id, :list_id, :name]}

  schema "cards" do
    field :name, :string
    belongs_to :list, List

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :list_id])
    |> validate_required([:name, :list_id])
  end
end
