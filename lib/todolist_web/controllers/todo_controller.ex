defmodule TodolistWeb.TodoController do
  use TodolistWeb, :controller

  alias Todolist.ToDo

  def create(conn, params) do
    with {:ok, %ToDo{} = todo} <- Todolist.create_todo(params) do
      conn
      |> put_status(:created)
      |> render("create.json", todo: todo)
    end
  end
end
