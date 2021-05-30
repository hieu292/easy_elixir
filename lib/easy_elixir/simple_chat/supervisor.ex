defmodule SimpleChat.Supervisor do
  def child_spec(_) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, []},
      type: :supervisor
    }
  end

  def start_link() do
    children = [
      SimpleChat.Server,
    ]
    Supervisor.start_link(children, name: __MODULE__, strategy: :one_for_one)
  end
end
