# typed: strong

module Privy
  module Models
    module Wallets
      class TempoZoneSettlementWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TempoZoneSettlementWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # CAIP-2 identifier of the Tempo parent chain, or null when unavailable.
        sig { returns(T.nilable(String)) }
        attr_accessor :caip2

        # Status of an external transaction step in a wallet action.
        sig do
          returns(
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        end
        attr_accessor :status

        # A hex-encoded string prefixed with '0x', capped at 300002 characters (150,000
        # bytes).
        sig { returns(T.nilable(String)) }
        attr_accessor :transaction_hash

        sig do
          returns(
            Privy::Wallets::TempoZoneSettlementWalletActionStep::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # A description of why a wallet action (or a step within a wallet action) failed.
        sig { returns(T.nilable(Privy::Wallets::FailureReason)) }
        attr_reader :failure_reason

        sig do
          params(failure_reason: Privy::Wallets::FailureReason::OrHash).void
        end
        attr_writer :failure_reason

        # A wallet action step representing a Tempo Zone settlement on its parent chain.
        sig do
          params(
            caip2: T.nilable(String),
            status:
              Privy::Wallets::ExternalTransactionWalletActionStepStatus::OrSymbol,
            transaction_hash: T.nilable(String),
            type:
              Privy::Wallets::TempoZoneSettlementWalletActionStep::Type::OrSymbol,
            failure_reason: Privy::Wallets::FailureReason::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # CAIP-2 identifier of the Tempo parent chain, or null when unavailable.
          caip2:,
          # Status of an external transaction step in a wallet action.
          status:,
          # A hex-encoded string prefixed with '0x', capped at 300002 characters (150,000
          # bytes).
          transaction_hash:,
          type:,
          # A description of why a wallet action (or a step within a wallet action) failed.
          failure_reason: nil
        )
        end

        sig do
          override.returns(
            {
              caip2: T.nilable(String),
              status:
                Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol,
              transaction_hash: T.nilable(String),
              type:
                Privy::Wallets::TempoZoneSettlementWalletActionStep::Type::TaggedSymbol,
              failure_reason: Privy::Wallets::FailureReason
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::Wallets::TempoZoneSettlementWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEMPO_ZONE_SETTLEMENT =
            T.let(
              :tempo_zone_settlement,
              Privy::Wallets::TempoZoneSettlementWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::TempoZoneSettlementWalletActionStep::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
