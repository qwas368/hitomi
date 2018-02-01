defmodule Hitomi.Web.Api.V2.Homepage do
  use Maru.Router

  version "v2"
  get do
    conn
    |> put_status(200)
    |> text("This is v2 api home page.")
  end
end
