defmodule Hitomi.Web.Api.V1.Image do
  use Maru.Router

  namespace :image do
    route_param :id do
      get do
        json(conn, %{ id: params[:id] })
      end
    end

    get do
      json(conn, %{ list: "a list" })
    end
  end
end
