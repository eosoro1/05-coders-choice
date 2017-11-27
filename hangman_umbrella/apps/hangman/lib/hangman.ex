defmodule Hangman do
  use Application
  @moduledoc """
  Documentation for Hangman.
  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Hangman.Repo, [])

    ]
  opts =[strategy: :one_for_one, name: Hangman.Supervisor]
    Supervisor.start_link(children, opts)

  end

  @doc """
  Hello world.

  ## Examples

      iex> Hangman.hello
      :world

  """
  def hello do
    :world
  end
end
