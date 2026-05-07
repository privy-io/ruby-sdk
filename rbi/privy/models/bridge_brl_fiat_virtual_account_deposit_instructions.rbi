# typed: strong

module Privy
  module Models
    class BridgeBrlFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_holder_name

      sig do
        returns(
          Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset::OrSymbol
        )
      end
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :bank_address

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(String) }
      attr_accessor :br_code

      sig do
        returns(
          T::Array[
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
          ]
        )
      end
      attr_accessor :payment_rails

      # The deposit instructions for a virtual account.
      sig do
        params(
          account_holder_name: String,
          asset:
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
          bank_address: String,
          bank_name: String,
          br_code: String,
          payment_rails:
            T::Array[
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        account_holder_name:,
        asset:,
        bank_address:,
        bank_name:,
        br_code:,
        payment_rails:
      )
      end

      sig do
        override.returns(
          {
            account_holder_name: String,
            asset:
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset::OrSymbol,
            bank_address: String,
            bank_name: String,
            br_code: String,
            payment_rails:
              T::Array[
                Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail::OrSymbol
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
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRL =
          T.let(
            :brl,
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset::TaggedSymbol
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
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PIX =
          T.let(
            :pix,
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
