defmodule Bittorrent do
 # @spec download(Path.t()) :: {:ok, binary()} | :error | {:error, any()}
  def download(file_name) do
    Bittorrent.PeerDiscovery.Controller.first_request(file_name)
  end
end