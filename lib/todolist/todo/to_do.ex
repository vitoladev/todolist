defmodule Todolist.ToDo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :is_done, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(attrs, to_do \\ %__MODULE__{}) do
    to_do
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
