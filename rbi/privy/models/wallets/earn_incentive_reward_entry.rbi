# typed: strong

module Privy
  module Models
    module Wallets
      class EarnIncentiveRewardEntry < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnIncentiveRewardEntry,
              Privy::Internal::AnyHash
            )
          end

        # Total amount already claimed, in smallest unit.
        sig { returns(String) }
        attr_accessor :amount_claimed

        # Amount available to claim on-chain but not yet claimed, in smallest unit.
        sig { returns(String) }
        attr_accessor :amount_unclaimed

        # Address of the reward token.
        sig { returns(String) }
        attr_accessor :token_address

        # Symbol of the reward token (e.g. "MORPHO").
        sig { returns(String) }
        attr_accessor :token_symbol

        # Number of decimals for the reward token.
        sig { returns(T.nilable(Integer)) }
        attr_reader :token_decimals

        sig { params(token_decimals: Integer).void }
        attr_writer :token_decimals

        # A reward token with claimed and unclaimed amounts.
        sig do
          params(
            amount_claimed: String,
            amount_unclaimed: String,
            token_address: String,
            token_symbol: String,
            token_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Total amount already claimed, in smallest unit.
          amount_claimed:,
          # Amount available to claim on-chain but not yet claimed, in smallest unit.
          amount_unclaimed:,
          # Address of the reward token.
          token_address:,
          # Symbol of the reward token (e.g. "MORPHO").
          token_symbol:,
          # Number of decimals for the reward token.
          token_decimals: nil
        )
        end

        sig do
          override.returns(
            {
              amount_claimed: String,
              amount_unclaimed: String,
              token_address: String,
              token_symbol: String,
              token_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
