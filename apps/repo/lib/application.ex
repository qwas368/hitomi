defmodule Hitomi.Repo.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Hitomi.Image.Agent, [])
    ]

    opts = [strategy: :one_for_one, name: Hitomi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
