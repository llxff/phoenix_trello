defmodule PhoenixTrello.Board do
  use PhoenixTrello.Web, :model

  alias __MODULE__

  @derive { Poison.Encoder, only: [:id, :name, :user] }

  schema "boards" do
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
