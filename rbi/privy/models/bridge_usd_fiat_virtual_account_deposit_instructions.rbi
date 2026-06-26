# typed: strong

module Privy
  module Models
    class BridgeUsdFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeUsdFiatVirtualAccountDepositInstructions,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset::OrSymbol
        )
      end
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :bank_account_number

      sig { returns(String) }
      attr_accessor :bank_address

      sig { returns(String) }
      attr_accessor :bank_beneficiary_address

      sig { returns(String) }
      attr_accessor :bank_beneficiary_name

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(String) }
      attr_accessor :bank_routing_number

      sig do
        returns(
          T::Array[
            Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail::OrSymbol
          ]
        )
      end
      attr_accessor :payment_rails

      # The deposit instructions for a virtual account.
      sig do
        params(
          asset:
            Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
          bank_account_number: String,
          bank_address: String,
          bank_beneficiary_address: String,
          bank_beneficiary_name: String,
          bank_name: String,
          bank_routing_number: String,
          payment_rails:
            T::Array[
              Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        asset:,
        bank_account_number:,
        bank_address:,
        bank_beneficiary_address:,
        bank_beneficiary_name:,
        bank_name:,
        bank_routing_number:,
        payment_rails:
      )
      end

      sig do
        override.returns(
          {
            asset:
              Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
            bank_account_number: String,
            bank_address: String,
            bank_beneficiary_address: String,
            bank_beneficiary_name: String,
            bank_name: String,
            bank_routing_number: String,
            payment_rails:
              T::Array[
                Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail::OrSymbol
              ]
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
              Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD =
          T.let(
            :usd,
            Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
