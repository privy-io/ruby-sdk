# typed: strong

module Privy
  module Models
    module Wallets
      class EarnPositionApyAllocation < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnPositionApyAllocation,
              Privy::Internal::AnyHash
            )
          end

        # Net APY in basis points, rounded to the nearest integer.
        sig { returns(Integer) }
        attr_accessor :apy_bps

        # Allocated assets in the smallest unit of the underlying asset.
        sig { returns(String) }
        attr_accessor :assets_in_vault

        # Whether an APY allocation earns the base or boosted rate.
        sig { returns(Privy::Wallets::EarnPositionApyType::TaggedSymbol) }
        attr_accessor :type

        # An APY allocation within a vault position.
        sig do
          params(
            apy_bps: Integer,
            assets_in_vault: String,
            type: Privy::Wallets::EarnPositionApyType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Net APY in basis points, rounded to the nearest integer.
          apy_bps:,
          # Allocated assets in the smallest unit of the underlying asset.
          assets_in_vault:,
          # Whether an APY allocation earns the base or boosted rate.
          type:
        )
        end

        sig do
          override.returns(
            {
              apy_bps: Integer,
              assets_in_vault: String,
              type: Privy::Wallets::EarnPositionApyType::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
