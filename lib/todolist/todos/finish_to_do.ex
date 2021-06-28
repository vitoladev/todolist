defmodule Todolist.ToDos.Finish do
  alias Todolist.{Repo, ToDo}

  def call(id) do
    todo =
      Repo.get!(ToDo, id)
      |> Ecto.Changeset.change(is_done: true)

    Repo.update!(todo)
  end
end
