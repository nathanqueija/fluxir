defmodule FluxirWeb.Router do
  use FluxirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FluxirWeb do
    pipe_through :api
  end
end
