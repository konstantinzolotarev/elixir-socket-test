defmodule DubtrackWsElixir.IndexController do
  use DubtrackWsElixir.Web, :controller

  def index(conn, _params) do
    json conn, %{working: true}
  end

  def health_check(conn, _params) do
    json conn, %{alive: 1}
  end

end
