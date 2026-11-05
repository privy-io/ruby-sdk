# typed: strong

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::WisdomTreeSettlementWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # CAIP-2 identifier of the chain the order trades on.
        sig { returns(T.nilable(String)) }
        attr_accessor :caip2

        # How a tMMF order fills: `secondary` from the provider pool in minutes, or
        # `primary` at the next NAV strike.
        sig { returns(T.nilable(Privy::Wallets::TmmfOrderType::TaggedSymbol)) }
        attr_accessor :order_type

        # What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
        # withdrawal.
        sig do
          returns(
            Privy::Wallets::WisdomTreeSettlementWalletActionStep::Received
          )
        end
        attr_reader :received

        sig do
          params(
            received:
              Privy::Wallets::WisdomTreeSettlementWalletActionStep::Received::OrHash
          ).void
        end
        attr_writer :received

        # What a tMMF order sends: the deposit asset for a deposit, fund shares for a
        # withdrawal.
        sig do
          returns(
            Privy::Wallets::WisdomTreeSettlementWalletActionStep::Requested
          )
        end
        attr_reader :requested

        sig do
          params(
            requested:
              Privy::Wallets::WisdomTreeSettlementWalletActionStep::Requested::OrHash
          ).void
        end
        attr_writer :requested

        # The transaction that delivered the received asset. Null until Privy verifies the
        # settlement.
        sig { returns(T.nilable(String)) }
        attr_accessor :settlement_transaction_hash

        # Status of a WisdomTree settlement step in a wallet action.
        sig do
          returns(
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::Variants
          )
        end
        attr_accessor :status

        sig do
          returns(
            Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type::TaggedSymbol
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

        # A wallet action step representing the settlement of a tokenized money market
        # fund (tMMF) order by WisdomTree.
        sig do
          params(
            caip2: T.nilable(String),
            order_type: T.nilable(Privy::Wallets::TmmfOrderType::OrSymbol),
            received:
              Privy::Wallets::WisdomTreeSettlementWalletActionStep::Received::OrHash,
            requested:
              Privy::Wallets::WisdomTreeSettlementWalletActionStep::Requested::OrHash,
            settlement_transaction_hash: T.nilable(String),
            status:
              T.any(
                Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::OrSymbol,
                String
              ),
            type:
              Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type::OrSymbol,
            failure_reason: Privy::Wallets::FailureReason::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # CAIP-2 identifier of the chain the order trades on.
          caip2:,
          # How a tMMF order fills: `secondary` from the provider pool in minutes, or
          # `primary` at the next NAV strike.
          order_type:,
          # What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
          # withdrawal.
          received:,
          # What a tMMF order sends: the deposit asset for a deposit, fund shares for a
          # withdrawal.
          requested:,
          # The transaction that delivered the received asset. Null until Privy verifies the
          # settlement.
          settlement_transaction_hash:,
          # Status of a WisdomTree settlement step in a wallet action.
          status:,
          type:,
          # A description of why a wallet action (or a step within a wallet action) failed.
          failure_reason: nil
        )
        end

        sig do
          override.returns(
            {
              caip2: T.nilable(String),
              order_type:
                T.nilable(Privy::Wallets::TmmfOrderType::TaggedSymbol),
              received:
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Received,
              requested:
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Requested,
              settlement_transaction_hash: T.nilable(String),
              status:
                Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::Variants,
              type:
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type::TaggedSymbol,
              failure_reason: Privy::Wallets::FailureReason
            }
          )
        end
        def to_hash
        end

        class Received < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Received,
                Privy::Internal::AnyHash
              )
            end

          # What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
          # withdrawal.
          sig { returns(T.attached_class) }
          def self.new
          end

          sig { override.returns({}) }
          def to_hash
          end
        end

        class Requested < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Requested,
                Privy::Internal::AnyHash
              )
            end

          # What a tMMF order sends: the deposit asset for a deposit, fund shares for a
          # withdrawal.
          sig { returns(T.attached_class) }
          def self.new
          end

          sig { override.returns({}) }
          def to_hash
          end
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WISDOMTREE_SETTLEMENT =
            T.let(
              :wisdomtree_settlement,
              Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type::TaggedSymbol
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
