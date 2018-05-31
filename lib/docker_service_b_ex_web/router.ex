defmodule DockerServiceBExWeb.Router do
  use DockerServiceBExWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DockerServiceBExWeb do
    pipe_through :api
  end
end
