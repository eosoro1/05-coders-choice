defmodule HangmanWeb.PageController do
  use HangmanWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
