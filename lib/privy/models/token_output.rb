# frozen_string_literal: true

module Privy
  module Models
    class TokenOutput < Privy::Internal::Type::BaseModel
      # @!attribute owner_public_key
      #
      #   @return [String]
      required :owner_public_key, String

      # @!attribute token_amount
      #
      #   @return [String]
      required :token_amount, String

      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute revocation_commitment
      #
      #   @return [String, nil]
      optional :revocation_commitment, String

      # @!attribute token_identifier
      #
      #   @return [String, nil]
      optional :token_identifier, String

      # @!attribute token_public_key
      #
      #   @return [String, nil]
      optional :token_public_key, String

      # @!attribute withdraw_bond_sats
      #
      #   @return [Float, nil]
      optional :withdraw_bond_sats, Float

      # @!attribute withdraw_relative_block_locktime
      #
      #   @return [Float, nil]
      optional :withdraw_relative_block_locktime, Float

      # @!method initialize(owner_public_key:, token_amount:, id: nil, revocation_commitment: nil, token_identifier: nil, token_public_key: nil, withdraw_bond_sats: nil, withdraw_relative_block_locktime: nil)
      #   A Spark token output.
      #
      #   @param owner_public_key [String]
      #   @param token_amount [String]
      #   @param id [String]
      #   @param revocation_commitment [String]
      #   @param token_identifier [String]
      #   @param token_public_key [String]
      #   @param withdraw_bond_sats [Float]
      #   @param withdraw_relative_block_locktime [Float]
    end
  end
end
