defmodule Hitomi.Api.V1.Homepage do
  use Maru.Router

  namespace :v1 do
    get do
      json(conn, "This is v1 api home page." )
    end

    mount Hitomi.Api.V1.Image
    mount Hitomi.Api.V1.User
  end
end
