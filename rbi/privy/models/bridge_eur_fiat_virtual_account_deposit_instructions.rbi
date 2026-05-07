# typed: strong

module Privy
  module Models
    class BridgeEurFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeEurFiatVirtualAccountDepositInstructions,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_holder_name

      sig do
        returns(
          Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset::OrSymbol
        )
      end
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :bank_address

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(String) }
      attr_accessor :bic

      sig { returns(String) }
      attr_accessor :iban

      sig do
        returns(
          T::Array[
            Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
          ]
        )
      end
      attr_accessor :payment_rails

      # The deposit instructions for a virtual account.
      sig do
        params(
          account_holder_name: String,
          asset:
            Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
          bank_address: String,
          bank_name: String,
          bic: String,
          iban: String,
          payment_rails:
            T::Array[
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        account_holder_name:,
        asset:,
        bank_address:,
        bank_name:,
        bic:,
        iban:,
        payment_rails:
      )
      end

      sig do
        override.returns(
          {
            account_holder_name: String,
            asset:
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
            bank_address: String,
            bank_name: String,
            bic: String,
            iban: String,
            payment_rails:
              T::Array[
                Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
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
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EUR =
          T.let(
            :eur,
            Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
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
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEPA =
          T.let(
            :sepa,
            Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
