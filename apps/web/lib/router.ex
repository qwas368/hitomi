defmodule Hitomi.Web.Router do
  use Maru.Router

  before do
    plug(Plug.Logger)
    plug(Plug.Static, at: "/", from: "apps/web/lib/static/")
  end

  plug(
    Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]
  )

  rescue_from Unauthorized, as: e do
    conn
    |> put_status(401)
    |> text("Unauthorized")
  end

  rescue_from([MatchError, RuntimeError], with: :custom_error)

  rescue_from :all, as: e do
    conn
    |> put_status(Plug.Exception.status(e))
    |> text(Exception.message(e))
  end

  defp custom_error(conn, exception) do
    conn
    |> put_status(500)
    |> json(%{code: 500, message: exception.message})
  end

  namespace :api do
    mount(Hitomi.Web.Api.V1.Homepage)
    mount(Hitomi.Web.Api.V2.Homepage)
  end
end
