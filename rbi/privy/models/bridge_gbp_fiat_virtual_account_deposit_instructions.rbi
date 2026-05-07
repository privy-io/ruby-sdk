# typed: strong

module Privy
  module Models
    class BridgeGbpFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_holder_name

      sig { returns(String) }
      attr_accessor :account_number

      sig do
        returns(
          Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset::OrSymbol
        )
      end
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :bank_address

      sig { returns(String) }
      attr_accessor :bank_name

      sig do
        returns(
          T::Array[
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
          ]
        )
      end
      attr_accessor :payment_rails

      sig { returns(String) }
      attr_accessor :sort_code

      # The deposit instructions for a virtual account.
      sig do
        params(
          account_holder_name: String,
          account_number: String,
          asset:
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
          bank_address: String,
          bank_name: String,
          payment_rails:
            T::Array[
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
            ],
          sort_code: String
        ).returns(T.attached_class)
      end
      def self.new(
        account_holder_name:,
        account_number:,
        asset:,
        bank_address:,
        bank_name:,
        payment_rails:,
        sort_code:
      )
      end

      sig do
        override.returns(
          {
            account_holder_name: String,
            account_number: String,
            asset:
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
            bank_address: String,
            bank_name: String,
            payment_rails:
              T::Array[
                Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
              ],
            sort_code: String
          }
        )
      end
      def to_hash
      end

      module Asset
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GBP =
          T.let(
            :gbp,
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module PaymentRail
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FASTER_PAYMENTS =
          T.let(
            :faster_payments,
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
