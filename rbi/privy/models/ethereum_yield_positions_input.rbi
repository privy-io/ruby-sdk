# typed: strong

module Privy
  module Models
    class EthereumYieldPositionsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldPositionsInput, Privy::Internal::AnyHash)
        end

      # The vault ID to get position for.
      sig { returns(String) }
      attr_accessor :vault_id

      # Include archived wallets in lookup. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_archived

      sig { params(include_archived: T::Boolean).void }
      attr_writer :include_archived

      # Input for fetching yield positions.
      sig do
        params(vault_id: String, include_archived: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(
        # The vault ID to get position for.
        vault_id:,
        # Include archived wallets in lookup. Defaults to false.
        include_archived: nil
      )
      end

      sig do
        override.returns({ vault_id: String, include_archived: T::Boolean })
      end
      def to_hash
      end
    end
  end
end
