defmodule Todolist do
  @moduledoc """
  Todolist keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias Todolist.ToDos.Create, as: ToDosCreate
  alias Todolist.ToDos.Get, as: ToDosGet
  alias Todolist.ToDos.Finish, as: ToDosFinish
  alias Todolist.ToDos.Delete, as: ToDosDelete

  defdelegate create_todo(params), to: ToDosCreate, as: :call
  defdelegate get_all_todos, to: ToDosGet, as: :get_all
  defdelegate get_by_id(id), to: ToDosGet, as: :get_by_id
  defdelegate finish_todo(id), to: ToDosFinish, as: :call
  defdelegate delete_todo(id), to: ToDosDelete, as: :call
end
