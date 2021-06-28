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
    with {:ok, %ToDo{} = todo} <- Todolist.get_by_id(id) do
      conn |> render("todo.json", todo: todo)
    end
  end

  def finish(conn, %{"id" => id}) do
    with {:ok, %ToDo{} = todo} <- Todolist.finish_todo(id) do
      conn |> render("todo.json", todo: todo)
    end
  end

  def delete(conn, %{"id" => id}) do
    todo = Todolist.get_by_id(id)

    with {:ok, %ToDo{}} <- Todolist.delete_todo(todo) do
      conn |> send_resp(:no_content, "")
    end
  end
end
