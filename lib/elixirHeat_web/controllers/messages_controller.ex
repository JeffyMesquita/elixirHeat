defmodule ElixirHeatWeb.MessagesController do
  use ElixirHeatWeb, :controller

  def create(conn, params) do
    IO.inspect(params)

    text(conn, 'Recebi a Requisição')
  end
end
