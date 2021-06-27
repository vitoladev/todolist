defmodule Todolist.ToDos.Create do
  alias Todolist.{Repo, ToDo}

  def call(attrs) do
    attrs
    |> ToDo.changeset()
    |> Repo.insert()
  end
end
