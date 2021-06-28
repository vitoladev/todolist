defmodule TodolistWeb.FallbackController do
  use TodolistWeb, :controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(TodolistWeb.ErrorView)
    |> render(:"404")
  end
end
