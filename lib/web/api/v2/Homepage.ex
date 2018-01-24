defmodule Hitomi.Api.V2.Homepage do
  use Maru.Router

  version "v2"
  get do
    json(conn, "This is v2 api home page." )
  end

end
