defmodule Todolist.ToDos.Get do
  alias Todolist.{Repo, ToDo}

  def get_all() do
    Repo.all(ToDo)
  end

  def get_by_id(id) do
    Repo.get!(ToDo, id)
  end
end
