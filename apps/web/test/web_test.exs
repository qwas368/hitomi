defmodule Hitomi.WebTest do
  use ExUnit.Case
  use Maru.Test
  alias Hitomi.Models.Image

  test "api v1 homepage" do
    assert "This is v1 api home page." = get("/api/v1") |> text_response
  end

  test "api v2 homepage" do
    assert "This is v2 api home page." = get("/api/v2") |> text_response
  end

  test "image" do
    test_input = %Image{id: 1, tag: [:people], url: "https://imgur.com/"}

    assert test_input =
             build_conn()
             |> Plug.Conn.put_req_header("content-type", "application/json")
             |> put_body_or_params(Poison.encode!(test_input))
             |> post("/api/v1/image")
             |> json_response

    assert test_input = get("/api/v1/image/1") |> json_response
  end

  test "error message" do
    assert "Server Error!" = get("/unknown/api") |> text_response
  end
end
