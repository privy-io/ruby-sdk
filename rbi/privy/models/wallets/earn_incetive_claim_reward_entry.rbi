# typed: strong

module Privy
  module Models
    module Wallets
      class EarnIncetiveClaimRewardEntry < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnIncetiveClaimRewardEntry,
              Privy::Internal::AnyHash
            )
          end

        # Claimable amount in base units.
        sig { returns(String) }
        attr_accessor :amount

        # Address of the reward token.
        sig { returns(String) }
        attr_accessor :token_address

        # Symbol of the reward token (e.g. "MORPHO").
        sig { returns(String) }
        attr_accessor :token_symbol

        # Number of decimal places for the reward token.
        sig { returns(T.nilable(Integer)) }
        attr_reader :token_decimals

        sig { params(token_decimals: Integer).void }
        attr_writer :token_decimals

        # A specific reward token and amount associated with an earn incentive claim.
        sig do
          params(
            amount: String,
            token_address: String,
            token_symbol: String,
            token_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Claimable amount in base units.
          amount:,
          # Address of the reward token.
          token_address:,
          # Symbol of the reward token (e.g. "MORPHO").
          token_symbol:,
          # Number of decimal places for the reward token.
          token_decimals: nil
        )
        end

        sig do
          override.returns(
            {
              amount: String,
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
