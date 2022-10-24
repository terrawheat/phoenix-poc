defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    pages = [%{title: "foo"}, %{title: "bar"}]

    conn
    |> render("index.json", pages: pages)
  end
end
