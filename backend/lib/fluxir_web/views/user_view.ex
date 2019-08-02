defmodule FluxirWeb.UserView do
  use FluxirWeb, :view

  def render("index.json", %{users: users}) do
    Enum.map(users, &user_json/1)
  end

  def user_json(user) do
    %{
      id: user.id,
      name: user.name,
      username: user.username
    }
  end
end
