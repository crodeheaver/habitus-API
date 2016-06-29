defmodule Habitus.PageView do
  use Habitus.Web, :view

  def render("index.json", %{pages: pages}) do
    %{data: render_many(pages, Habitus.PageView, "page.json")}
  end

  def render("show.json", %{page: page}) do
    %{data: render_one(page, Habitus.PageView, "page.json")}
  end

  def render("page.json", %{page: page}) do
    %{id: page.id,
      title: page.title,
      content: page.content,
      author: page.author}
  end
end
