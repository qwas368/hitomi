defmodule Hitomi.Web.Api.V1.Homepage do
  use Maru.Router

  version "v1"
  get do
    conn
    |> put_status(200)
    |> text("This is v1 api home page.")
  end

  mount Hitomi.Web.Api.V1.Image
end
