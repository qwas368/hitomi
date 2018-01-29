defmodule Hitomi.Repo.ImageRepo do
  alias Hitomi.Models.Image, as: Image

end

defimpl Hitomi.Repo, for: Hitomi.Models.Image do
  alias Hitomi.Models.Image, as: Image

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
