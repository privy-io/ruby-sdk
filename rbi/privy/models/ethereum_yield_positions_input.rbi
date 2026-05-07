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

      # Input for fetching yield positions.
      sig { params(vault_id: String).returns(T.attached_class) }
      def self.new(
        # The vault ID to get position for.
        vault_id:
      )
      end

      sig { override.returns({ vault_id: String }) }
      def to_hash
      end
    end
  end
end
