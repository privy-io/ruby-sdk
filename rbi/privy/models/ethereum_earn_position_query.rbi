# typed: strong

module Privy
  module Models
    class EthereumEarnPositionQuery < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumEarnPositionQuery, Privy::Internal::AnyHash)
        end

      # The vault ID to get position for.
      sig { returns(String) }
      attr_accessor :vault_id

      # Query parameters for fetching an earn vault position.
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
