defmodule Hitomi.Repo do
  @moduledoc false

  @type t :: struct

  @doc false
  defmacro __using__(opts) do
    quote bind_quoted: [opts: opts] do
      @behaviour Hitomi.Repo
    end
  end

  @doc """
  Insert model struct to a data store.
  """
  @callback insert(t) :: {:ok, t} | {:error, String.t()}

  @doc """
  Get model by primary key from a data store.
  """
  @callback get(Integer) :: {:ok, t} | {:ok, nil} | {:error, String.t()}

  @doc """
  Delete model using its primary key.
  """
  @callback delete(t) :: {:ok, t} | {:error, String.t()}

  @doc """
  Update model using its primary key.
  """
  @callback update(t) :: {:ok, t} | {:error, String.t()}
end
