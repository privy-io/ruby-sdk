# typed: strong

module Privy
  module Models
    module Wallets
      class EarnFeeCollectRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnFeeCollectRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the vault to collect fees from.
        sig { returns(String) }
        attr_accessor :vault_id

        # Input for collecting accumulated fees from an Aave vault.
        sig { params(vault_id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the vault to collect fees from.
          vault_id:
        )
        end

        sig { override.returns({ vault_id: String }) }
        def to_hash
        end
      end
    end
  end
end
