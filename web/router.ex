defmodule DubtrackWsElixir.Router do
  use DubtrackWsElixir.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DubtrackWsElixir do
    pipe_through :api

    get "/", IndexController, :index
    get "/health/check", IndexController, :health_check
  end

  scope "/api", DubtrackWsElixir do
    pipe_through :api
  end
end
