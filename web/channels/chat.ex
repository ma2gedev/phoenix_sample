defmodule PhoenixSample.Chat do
  use Phoenix.Channel

  def join(socket, "chat", message) do
    {:ok, socket}
  end

  def join(socket, _no, _message) do
    {:error, socket, :unauthorized}
  end

  def event(socket, "message", data) do
    IO.puts data["message"]
    broadcast socket, "broadcast_message", %{message: data["message"]}
    socket
  end
end
