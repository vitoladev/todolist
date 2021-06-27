defmodule TodolistWeb.TodoView do
  use TodolistWeb, :view

  def render("create.json", %{todo: todo}) do
    %{
      data: %{id: todo.id, title: todo.title, is_done: todo.is_done},
      message: "Successfully created user!"
    }
  end
end
