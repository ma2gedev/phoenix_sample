defmodule PhoenixSample.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  channel "channel", PhoenixSample.Chat

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", PhoenixSample.PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
