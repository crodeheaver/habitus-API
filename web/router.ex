defmodule Habitus.Router do
  use Habitus.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", Habitus do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
    resources "/pages", PageController, except: [:new, :edit]
    resources "/comments", CommentController, except: [:new, :edit]
    resources "/tags", TagController, except: [:new, :edit]
  end
  
end
