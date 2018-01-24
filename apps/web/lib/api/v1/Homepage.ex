defmodule Hitomi.Web.Api.V1.Homepage do
  use Maru.Router

  version "v1"
  get do
    json(conn, "This is v1 api home page." )
  end

  mount Hitomi.Web.Api.V1.Image
  mount Hitomi.Web.Api.V1.User
end
