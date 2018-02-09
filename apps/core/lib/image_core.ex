defmodule Hitomi.Image.Core do
  alias Hitomi.Models.Image
  @opaque t :: %Image{}

  @spec validate_model(t) :: {:ok, t} | {:error, String.t()}
  def validate_model(mdl) do
    cond do
      mdl.id <= 0 -> {:error, "id invalid"}
      String.length(mdl.url) > 50 -> {:error, "image url over size"}
      length(mdl.tag) == 0 -> {:error, "at least one tag"}
      true -> {:ok, mdl}
    end
  end
end
