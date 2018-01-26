defmodule Hitomi.Web.Api.V1.Image do
  use Maru.Router

  alias Hitomi.Repo.ImageRepo

  namespace :image do
    route_param :id do
      get do
        conn
        |> json(ImageRepo.get(String.to_integer(params[:id])))
      end
    end

    get do
      json(conn, %{ list: "a list" })
    end
  end
end
