defmodule FluxirWeb.Router do
  use FluxirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FluxirWeb do
    pipe_through :api

    get "/users", UserController, :index
    get "/users/:id", UserController, :show

    get "/hello/:name", HelloController, :world
  end
end
