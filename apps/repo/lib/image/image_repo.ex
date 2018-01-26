defmodule Hitomi.Repo.ImageRepo do
  alias Hitomi.Models.Image, as: Image

  def get(id) when is_integer(id) do
    %Image{}
  end
end
