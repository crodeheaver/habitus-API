defmodule Habitus.UserView do
  use Habitus.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Habitus.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Habitus.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      displayName: user.displayName,
      email: user.email,
      password: user.password}
  end
end
