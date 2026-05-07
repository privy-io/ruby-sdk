# typed: strong

module Privy
  module Models
    class EthereumVaultDetailsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumVaultDetailsInput, Privy::Internal::AnyHash)
        end

      # The Privy vault ID.
      sig { returns(String) }
      attr_accessor :vault_id

      # Input for fetching vault details.
      sig { params(vault_id: String).returns(T.attached_class) }
      def self.new(
        # The Privy vault ID.
        vault_id:
      )
      end

      sig { override.returns({ vault_id: String }) }
      def to_hash
      end
    end
  end
end
