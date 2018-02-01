defmodule Hitomi.RepoTest do
  use ExUnit.Case
  alias Hitomi.Models.Image
  alias Hitomi.Image.Repo

  test "insert&get" do
    assert %Image{} = Repo.insert(%Image{})
    assert {:ok, %Image{}} = Repo.get(0)
  end

  test "get" do
    assert {:error, "can't find"} = Repo.get(0)
  end
end
