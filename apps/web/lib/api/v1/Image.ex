defmodule Hitomi.Web.Api.V1.Image do
  use Maru.Router
  alias Hitomi.Image.Repo

  namespace :image do
    route_param :id do
      get do
        query_result = params[:id]
        |> String.to_integer
        |> Repo.get

        case query_result do
          {:ok, image} -> conn |> json(image)
          {:error, message} -> conn |> json("error:" <> message)
        end
      end
    end

    get do
      json(conn, %{ list: "a list" })
    end
  end
end
