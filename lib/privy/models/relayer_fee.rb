# frozen_string_literal: true

module Privy
  module Models
    class RelayerFee < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount in USD (in decimals).
      #
      #   @return [String]
      required :amount, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::RelayerFee::Type]
      required :type, enum: -> { Privy::RelayerFee::Type }

      # @!attribute recipient
      #   Stellar account address: an ed25519 public key in StrKey encoding, starting with
      #   G.
      #
      #   @return [String, nil]
      optional :recipient, String

      # @!method initialize(amount:, type:, recipient: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::RelayerFee} for more details.
      #
      #   Estimated fee paid to the relayer.
      #
      #   @param amount [String] Amount in USD (in decimals).
      #
      #   @param type [Symbol, Privy::Models::RelayerFee::Type]
      #
      #   @param recipient [String] Stellar account address: an ed25519 public key in StrKey encoding, starting with

      # @see Privy::Models::RelayerFee#type
      module Type
        extend Privy::Internal::Type::Enum

        RELAYER = :relayer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
