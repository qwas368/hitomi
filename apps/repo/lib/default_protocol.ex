defprotocol Hitomi.Repo do
  @moduledoc false

  @doc """
  Insert model struct to a data store.
  """
  @spec insert(t) :: {:ok, t} | {:error, String.t}
  def insert(data)

  @doc """
  Get model by primary key from a data store.
  """
  @spec get(Integer) :: {:ok, t} | {:ok, nil} | {:error, String.t}
  def get(id)

  @doc """
  Delete model using its primary key.
  """
  @spec delete(t) :: {:ok, t} | {:error, String.t}
  def delete(data)

  @doc """
  Update model using its primary key.
  """
  @spec update(t) :: {:ok, t} | {:error, String.t}
  def update(data)
end
