defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    count = Hello.Repo.aggregate(Hello.User, :count, :id)
    render(conn, "index.html", count: count)
    #conn
    #|> assign(:count, count)
    #|> render("index.html")
end
end
