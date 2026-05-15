# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#raw_sign
    class RawSignResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the `raw_sign` RPC.
      #
      #   @return [Privy::Models::RawSignResponseData]
      required :data, -> { Privy::RawSignResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::RawSignResponse::Method]
      required :method_, enum: -> { Privy::RawSignResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the `raw_sign` RPC.
      #
      #   @param data [Privy::Models::RawSignResponseData] Data returned by the `raw_sign` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::RawSignResponse::Method]

      # @see Privy::Models::RawSignResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        RAW_SIGN = :raw_sign

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
