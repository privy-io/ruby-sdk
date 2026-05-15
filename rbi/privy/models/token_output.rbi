# typed: strong

module Privy
  module Models
    class TokenOutput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::TokenOutput, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :owner_public_key

      sig { returns(String) }
      attr_accessor :token_amount

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :revocation_commitment

      sig { params(revocation_commitment: String).void }
      attr_writer :revocation_commitment

      sig { returns(T.nilable(String)) }
      attr_reader :token_identifier

      sig { params(token_identifier: String).void }
      attr_writer :token_identifier

      sig { returns(T.nilable(String)) }
      attr_reader :token_public_key

      sig { params(token_public_key: String).void }
      attr_writer :token_public_key

      sig { returns(T.nilable(Float)) }
      attr_reader :withdraw_bond_sats

      sig { params(withdraw_bond_sats: Float).void }
      attr_writer :withdraw_bond_sats

      sig { returns(T.nilable(Float)) }
      attr_reader :withdraw_relative_block_locktime

      sig { params(withdraw_relative_block_locktime: Float).void }
      attr_writer :withdraw_relative_block_locktime

      # A Spark token output.
      sig do
        params(
          owner_public_key: String,
          token_amount: String,
          id: String,
          revocation_commitment: String,
          token_identifier: String,
          token_public_key: String,
          withdraw_bond_sats: Float,
          withdraw_relative_block_locktime: Float
        ).returns(T.attached_class)
      end
      def self.new(
        owner_public_key:,
        token_amount:,
        id: nil,
        revocation_commitment: nil,
        token_identifier: nil,
        token_public_key: nil,
        withdraw_bond_sats: nil,
        withdraw_relative_block_locktime: nil
      )
      end

      sig do
        override.returns(
          {
            owner_public_key: String,
            token_amount: String,
            id: String,
            revocation_commitment: String,
            token_identifier: String,
            token_public_key: String,
            withdraw_bond_sats: Float,
            withdraw_relative_block_locktime: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
