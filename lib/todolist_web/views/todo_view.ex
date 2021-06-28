defmodule TodolistWeb.TodoView do
  use TodolistWeb, :view
  alias TodolistWeb.TodoView

  def render("create.json", %{todo: todo}) do
    %{
      data: render_one(todo, TodoView, "todo.json"),
      message: "Successfully created user!"
    }
  end

  def render("get_all.json", %{todos: todos}) do
    render_many(todos, TodoView, "todo.json")
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id, title: todo.title, is_done: todo.is_done}
  end
end
