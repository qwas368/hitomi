defmodule Hitomi.Image.Service do
  alias Hitomi.Image.Core
  alias Hitomi.Models.Image
  alias Hitomi.Image.Repo
  @opaque t :: %Image{}

  @spec insert_image_model(t) :: {:ok, t} | {:error, String.t()}
  def insert_image_model(mdl) do
    with {:ok, test} <- Core.validate_model(mdl),
         mdl <- Repo.insert(mdl) do
      {:ok, test}
    else
      {:error, message} -> {:error, message}
      _  -> {:error, "Unhandle message"}
    end
  end
end
