# typed: strong

module Privy
  module Models
    module Wallets
      class EarnDepositRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnDepositRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the vault to deposit into.
        sig { returns(String) }
        attr_accessor :vault_id

        # Human-readable decimal amount to deposit (e.g. "1.5" for 1.5 USDC). Exactly one
        # of `amount` or `raw_amount` must be provided.
        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        # Amount in smallest unit to deposit (e.g. "1500000" for 1.5 USDC with 6
        # decimals). Exactly one of `amount` or `raw_amount` must be provided.
        sig { returns(T.nilable(String)) }
        attr_reader :raw_amount

        sig { params(raw_amount: String).void }
        attr_writer :raw_amount

        # Input for depositing assets into an ERC-4626 vault. Exactly one of `amount` or
        # `raw_amount` must be provided.
        sig do
          params(vault_id: String, amount: String, raw_amount: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the vault to deposit into.
          vault_id:,
          # Human-readable decimal amount to deposit (e.g. "1.5" for 1.5 USDC). Exactly one
          # of `amount` or `raw_amount` must be provided.
          amount: nil,
          # Amount in smallest unit to deposit (e.g. "1500000" for 1.5 USDC with 6
          # decimals). Exactly one of `amount` or `raw_amount` must be provided.
          raw_amount: nil
        )
        end

        sig do
          override.returns(
            { vault_id: String, amount: String, raw_amount: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
