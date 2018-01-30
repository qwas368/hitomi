defmodule Hitomi.Image.Repo do
  use Hitomi.Repo
  alias Hitomi.Models.Image

  def insert(data) do
    {:ok, data}
  end

  def get(id) do
    {:ok, %Image{}}
  end

  def delete(data) do
    {:ok, data}
  end

  def update(data) do
    {:ok, data}
  end
end
