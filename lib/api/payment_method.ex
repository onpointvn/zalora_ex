defmodule Zalora.PaymentMethod do
  alias Zalora.Client

  @doc """
  Get all payment methods

  Reference

  https://sellercenter-api.zalora.com.ph/docs/#/Payment%20Method/get_v2_payment_methods
  """
  @spec get_payment_methods(opts :: Keyword.t()) ::
          {:ok, list(map())} | {:error, any()}
  def get_payment_methods(opts \\ []) do
    case Client.new(opts) do
      {:ok, client} ->
        Client.get(client, "/v2/payment-methods")

      error ->
        error
    end
  end
end
