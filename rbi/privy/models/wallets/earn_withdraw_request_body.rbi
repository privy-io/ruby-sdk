# typed: strong

module Privy
  module Models
    module Wallets
      class EarnWithdrawRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnWithdrawRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the vault to withdraw from.
        sig { returns(String) }
        attr_accessor :vault_id

        # Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC). Exactly one
        # of `amount` or `raw_amount` must be provided.
        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        # Unique caller-generated nonce used to prevent replaying a signed wallet action
        # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        sig { returns(T.nilable(String)) }
        attr_reader :nonce

        sig { params(nonce: String).void }
        attr_writer :nonce

        # Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC with 6
        # decimals). Exactly one of `amount` or `raw_amount` must be provided.
        sig { returns(T.nilable(String)) }
        attr_reader :raw_amount

        sig { params(raw_amount: String).void }
        attr_writer :raw_amount

        # Developer-provided identifier for this request. Must be unique per app.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_id

        sig { params(reference_id: String).void }
        attr_writer :reference_id

        # Input for withdrawing assets from an ERC-4626 vault. Exactly one of `amount` or
        # `raw_amount` must be provided.
        sig do
          params(
            vault_id: String,
            amount: String,
            nonce: String,
            raw_amount: String,
            reference_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the vault to withdraw from.
          vault_id:,
          # Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC). Exactly one
          # of `amount` or `raw_amount` must be provided.
          amount: nil,
          # Unique caller-generated nonce used to prevent replaying a signed wallet action
          # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
          nonce: nil,
          # Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC with 6
          # decimals). Exactly one of `amount` or `raw_amount` must be provided.
          raw_amount: nil,
          # Developer-provided identifier for this request. Must be unique per app.
          reference_id: nil
        )
        end

        sig do
          override.returns(
            {
              vault_id: String,
              amount: String,
              nonce: String,
              raw_amount: String,
              reference_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
