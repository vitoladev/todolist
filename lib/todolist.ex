defmodule Todolist do
  @moduledoc """
  Todolist keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias Todolist.ToDos.Create, as: ToDosCreate

  defdelegate create_todo(params), to: ToDosCreate, as: :call

end
