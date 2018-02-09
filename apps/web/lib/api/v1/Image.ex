defmodule Hitomi.Web.Api.V1.Image do
  use Maru.Router
  alias Hitomi.Image.Repo
  alias Hitomi.Image.Service

  namespace :image do
    route_param :id do
      get do
        query_result =
          params[:id]
          |> String.to_integer()
          |> Repo.get()

        case query_result do
          {:ok, image} -> conn |> json(image)
          {:error, message} -> conn |> json("error:" <> message)
        end
      end
    end

    params do
      requires(:id, type: Integer)
      requires(:url, type: String)
      requires(:tag, type: List[Atom])
    end

    post do
      params
      |> Service.insert_image_model()
      |> case do
        {:ok, t} -> conn |> json(t)
        {:error, message} -> conn |> json(message)
      end
    end
  end
end
