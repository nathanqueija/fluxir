defmodule FluxirWeb.HelloController do
  use FluxirWeb, :controller

  def world(conn, %{"name" => name}) do
    render conn, "index.json", name: name
  end
end