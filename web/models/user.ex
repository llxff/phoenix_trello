defmodule PhoenixTrello.User do
  use PhoenixTrello.Web, :model

  schema "users" do
    has_many :owned_boards, PhoenixTrello.Board
    has_many :user_boards, UserBoard
    has_many :boards, through: [:user_borads, :board]

    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :encrypted_password, :string

    timestamps()
  end

  @derive { Poison.Encoder, only: [:id, :first_name, :last_name, :email] }

  @required_fields [:first_name, :last_name, :email, :password]

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :email, :password])
    |> validate_format(:email, ~r/@/)
    |> validate_length(:password, min: 5)
    |> validate_confirmation(:password, message: "Password does not match")
    |> unique_constraint(:email, message: "Email already taken")
    |> validate_required(@required_fields)
    |> generate_encrypted_password
  end

  defp generate_encrypted_password(current_changeset) do
    case current_changeset do
      %Ecto.Changeset{valid?: true, changes: %{ password: password }} ->
        put_change(current_changeset, :encrypted_password, Comeonin.Bcrypt.hashpwsalt(password))
      _ ->
        current_changeset
    end
  end
end
