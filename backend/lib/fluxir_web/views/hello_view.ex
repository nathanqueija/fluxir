defmodule FluxirWeb.HelloView do
  use FluxirWeb, :view

  def render("index.json", %{name: name}) do
    %{teste: 2, name: name}
  end
end