# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAccountChain < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      #   Ethereum).
      #
      #   @return [String]
      required :caip2, String

      # @!attribute chain_id
      #   Numeric chain id used by some clients as an alias.
      #
      #   @return [Integer]
      required :chain_id, Integer

      # @!attribute display_name
      #
      #   @return [String]
      required :display_name, String

      # @!attribute icon_url
      #   URL of the chain icon.
      #
      #   @return [String]
      required :icon_url, String

      # @!attribute vm_type
      #   Execution VM, e.g. evm or svm.
      #
      #   @return [String]
      required :vm_type, String

      # @!method initialize(caip2:, chain_id:, display_name:, icon_url:, vm_type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CryptoDepositAccountChain} for more details.
      #
      #   Chain metadata for rendering the crypto deposit-account source picker.
      #
      #   @param caip2 [String] EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for Ethere
      #
      #   @param chain_id [Integer] Numeric chain id used by some clients as an alias.
      #
      #   @param display_name [String]
      #
      #   @param icon_url [String] URL of the chain icon.
      #
      #   @param vm_type [String] Execution VM, e.g. evm or svm.
    end
  end
end
