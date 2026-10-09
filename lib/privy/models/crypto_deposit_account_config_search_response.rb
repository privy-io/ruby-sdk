# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAccountConfigSearchResponse < Privy::Internal::Type::BaseModel
      # @!attribute chains
      #
      #   @return [Hash{Symbol=>Privy::Models::CryptoDepositAccountChain}]
      required :chains, -> { Privy::Internal::Type::HashOf[Privy::CryptoDepositAccountChain] }

      # @!attribute currencies
      #
      #   @return [Array<Privy::Models::CryptoDepositAccountSearchCurrency>]
      required :currencies, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAccountSearchCurrency] }

      # @!method initialize(chains:, currencies:)
      #   Source tokens matching a crypto deposit-account search.
      #
      #   @param chains [Hash{Symbol=>Privy::Models::CryptoDepositAccountChain}]
      #   @param currencies [Array<Privy::Models::CryptoDepositAccountSearchCurrency>]
    end
  end
end
