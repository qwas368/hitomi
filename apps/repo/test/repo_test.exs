defmodule Hitomi.RepoTest do
  use ExUnit.Case
  doctest Hitomi.Repo

  test "greets the world" do
    assert Hitomi.Repo.hello() == :world
  end
end
