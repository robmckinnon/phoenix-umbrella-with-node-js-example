defmodule MyApp.Application do
  @moduledoc """
  The MyApp Application Service.

  The my_app system business domain lives in this application.

  Exposes API to clients such as the `MyAppWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: MyApp.Supervisor)
  end
end
