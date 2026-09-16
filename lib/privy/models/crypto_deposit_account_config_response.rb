# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAccountConfigResponse < Privy::Internal::Type::BaseModel
      # @!attribute chains
      #
      #   @return [Hash{Symbol=>Privy::Models::CryptoDepositAccountChain}]
      required :chains, -> { Privy::Internal::Type::HashOf[Privy::CryptoDepositAccountChain] }

      # @!attribute currencies
      #
      #   @return [Array<Privy::Models::CryptoDepositAccountSourceCurrency>]
      required :currencies, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAccountSourceCurrency] }

      # @!method initialize(chains:, currencies:)
      #   Source-token catalog for crypto deposit accounts. Only automation-sweepable,
      #   gas-sponsored mainnets.
      #
      #   @param chains [Hash{Symbol=>Privy::Models::CryptoDepositAccountChain}]
      #   @param currencies [Array<Privy::Models::CryptoDepositAccountSourceCurrency>]
    end
  end
end
