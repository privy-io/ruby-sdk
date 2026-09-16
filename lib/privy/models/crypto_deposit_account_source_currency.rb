# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAccountSourceCurrency < Privy::Internal::Type::BaseModel
      # @!attribute chains
      #
      #   @return [Array<Privy::Models::CryptoDepositAccountSourceChain>]
      required :chains, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAccountSourceChain] }

      # @!attribute logo_uri
      #   URL of the token logo.
      #
      #   @return [String]
      required :logo_uri, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute symbol
      #
      #   @return [String]
      required :symbol, String

      # @!method initialize(chains:, logo_uri:, name:, symbol:)
      #   A source token in the crypto deposit-account catalog, with the chains it can be
      #   sent from.
      #
      #   @param chains [Array<Privy::Models::CryptoDepositAccountSourceChain>]
      #
      #   @param logo_uri [String] URL of the token logo.
      #
      #   @param name [String]
      #
      #   @param symbol [String]
    end
  end
end
