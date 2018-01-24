defmodule Hitomi.WebTest do
  use ExUnit.Case
  doctest Hitomi.Web

  test "greets the world" do
    assert Hitomi.Web.hello() == :world
  end
end
