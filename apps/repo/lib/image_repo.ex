defmodule Hitomi.Image.Repo do
  use Hitomi.Repo
  alias Hitomi.Models.Image
  alias Hitomi.Image.Agent

  def insert(data) do
    case Agent.insert(data) do
      :ok -> data
    end
  end

  def get(id) do
    Agent.get(id)
  end

  def delete(data) do
    {:ok, data}
  end

  def update(data) do
    {:ok, data}
  end
end

defmodule Hitomi.Image.Agent do
	@name __MODULE__

	def start_link do
		Agent.start_link(fn -> %{} end, name: @name)
	end

	def insert(image) do
		Agent.update(@name, &Map.put_new(&1, image.id, image))
	end

	def get(id) do
		case Agent.get(@name, &Map.get(&1, id, nil)) do
      nil -> {:error, "can't find"}
      image -> {:ok, image}
    end
	end
end
