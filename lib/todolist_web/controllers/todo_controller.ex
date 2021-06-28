defmodule TodolistWeb.TodoController do
  use TodolistWeb, :controller

  alias Todolist.ToDo

  action_fallback TodolistWeb.FallbackController

  def create(conn, params) do
    with {:ok, %ToDo{} = todo} <- Todolist.create_todo(params) do
      conn
      |> put_status(:created)
      |> render("create.json", todo: todo)
    end
  end

  def get_all(conn, _params) do
    todos = Todolist.get_all_todos()

    conn
    |> render("get_all.json", todos: todos)
  end

  def get_by_id(conn, %{"id" => id}) do
    todo = Todolist.get_by_id(id)

    conn |> render("todo.json", todo: todo)
  end

  def finish(conn, %{"id" => id}) do
    finished_todo = Todolist.finish_todo(id)

    conn |> render("todo.json", todo: finished_todo)
  end
end
