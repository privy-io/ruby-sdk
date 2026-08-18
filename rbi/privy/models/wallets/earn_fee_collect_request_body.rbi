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

        # Unique caller-generated nonce used to prevent replaying a signed wallet action
        # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        sig { returns(T.nilable(String)) }
        attr_reader :nonce

        sig { params(nonce: String).void }
        attr_writer :nonce

        # Input for collecting accumulated fees from an Aave vault.
        sig do
          params(vault_id: String, nonce: String).returns(T.attached_class)
        end
        def self.new(
          # The ID of the vault to collect fees from.
          vault_id:,
          # Unique caller-generated nonce used to prevent replaying a signed wallet action
          # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
          nonce: nil
        )
        end

        sig { override.returns({ vault_id: String, nonce: String }) }
        def to_hash
        end
      end
    end
  end
end
