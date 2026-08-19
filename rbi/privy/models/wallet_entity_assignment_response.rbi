# typed: strong

module Privy
  module Models
    class WalletEntityAssignmentResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletEntityAssignmentResponse, Privy::Internal::AnyHash)
        end

      # Unique wallet entity assignment identifier.
      sig { returns(String) }
      attr_accessor :id

      # Unix timestamp when the assignment was created.
      sig { returns(Float) }
      attr_accessor :created_at

      # The entity a wallet is attributed to.
      sig { returns(Privy::WalletEntity) }
      attr_reader :entity

      sig { params(entity: Privy::WalletEntity::OrHash).void }
      attr_writer :entity

      # Unix timestamp when the assignment was last updated.
      sig { returns(Float) }
      attr_accessor :updated_at

      # ID of the assigned wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # The entity assignment for a wallet.
      sig do
        params(
          id: String,
          created_at: Float,
          entity: Privy::WalletEntity::OrHash,
          updated_at: Float,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique wallet entity assignment identifier.
        id:,
        # Unix timestamp when the assignment was created.
        created_at:,
        # The entity a wallet is attributed to.
        entity:,
        # Unix timestamp when the assignment was last updated.
        updated_at:,
        # ID of the assigned wallet.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            entity: Privy::WalletEntity,
            updated_at: Float,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
