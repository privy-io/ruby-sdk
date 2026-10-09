# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAccountSearchCurrency < Privy::Internal::Type::BaseModel
      # @!attribute chains
      #
      #   @return [Array<Privy::Models::CryptoDepositAccountSourceChain>]
      required :chains, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAccountSourceChain] }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute symbol
      #
      #   @return [String]
      required :symbol, String

      # @!attribute verified
      #   Whether this token is verified as the canonical token for its symbol, since
      #   unverified tokens may be lookalikes.
      #
      #   @return [Boolean]
      required :verified, Privy::Internal::Type::Boolean

      # @!attribute logo_uri
      #   URL of the token logo, omitted when none is known.
      #
      #   @return [String, nil]
      optional :logo_uri, String

      # @!method initialize(chains:, name:, symbol:, verified:, logo_uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CryptoDepositAccountSearchCurrency} for more details.
      #
      #   A source token matched by crypto deposit-account search.
      #
      #   @param chains [Array<Privy::Models::CryptoDepositAccountSourceChain>]
      #
      #   @param name [String]
      #
      #   @param symbol [String]
      #
      #   @param verified [Boolean] Whether this token is verified as the canonical token for its symbol, since unve
      #
      #   @param logo_uri [String] URL of the token logo, omitted when none is known.
    end
  end
end
