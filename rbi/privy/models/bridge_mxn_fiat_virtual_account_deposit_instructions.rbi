# typed: strong

module Privy
  module Models
    class BridgeMxnFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_holder_name

      sig do
        returns(
          Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset::OrSymbol
        )
      end
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :bank_address

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(String) }
      attr_accessor :clabe

      sig do
        returns(
          T::Array[
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
          ]
        )
      end
      attr_accessor :payment_rails

      # The deposit instructions for a virtual account.
      sig do
        params(
          account_holder_name: String,
          asset:
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
          bank_address: String,
          bank_name: String,
          clabe: String,
          payment_rails:
            T::Array[
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        account_holder_name:,
        asset:,
        bank_address:,
        bank_name:,
        clabe:,
        payment_rails:
      )
      end

      sig do
        override.returns(
          {
            account_holder_name: String,
            asset:
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
            bank_address: String,
            bank_name: String,
            clabe: String,
            payment_rails:
              T::Array[
                Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
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
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MXN =
          T.let(
            :mxn,
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
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
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEI =
          T.let(
            :spei,
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
