defmodule Hitomi.ModelsTest do
  use ExUnit.Case
  alias Hitomi.Models.Image

  test "Image model" do
    assert %Image{}.id == 0
  end
end
