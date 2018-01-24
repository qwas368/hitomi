defmodule Hitomi.ServiceTest do
  use ExUnit.Case
  doctest Hitomi.Service

  test "greets the world" do
    assert Hitomi.Service.hello() == :world
  end
end
