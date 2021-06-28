defmodule Todolist.ToDos.Delete do
  alias Todolist.{Repo, ToDo}

  def call(%ToDo{} = todo) do
    Repo.delete(todo)
  end
end
