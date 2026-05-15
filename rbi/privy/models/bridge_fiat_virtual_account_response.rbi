# typed: strong

module Privy
  module Models
    class BridgeFiatVirtualAccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeFiatVirtualAccountResponse,
            Privy::Internal::AnyHash
          )
        end

      # The deposit instructions for a virtual account.
      sig do
        returns(
          T.any(
            Privy::BridgeUsdFiatVirtualAccountDepositInstructions,
            Privy::BridgeEurFiatVirtualAccountDepositInstructions,
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions,
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions,
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions
          )
        )
      end
      attr_accessor :deposit_instructions

      sig { returns(Privy::BridgeFiatVirtualAccountDestination) }
      attr_reader :destination

      sig do
        params(
          destination: Privy::BridgeFiatVirtualAccountDestination::OrHash
        ).void
      end
      attr_writer :destination

      sig do
        returns(Privy::BridgeFiatVirtualAccountResponse::Provider::OrSymbol)
      end
      attr_accessor :provider

      sig { returns(String) }
      attr_accessor :status

      # The response for creating virtual account.
      sig do
        params(
          deposit_instructions:
            T.any(
              Privy::BridgeUsdFiatVirtualAccountDepositInstructions::OrHash,
              Privy::BridgeEurFiatVirtualAccountDepositInstructions::OrHash,
              Privy::BridgeMxnFiatVirtualAccountDepositInstructions::OrHash,
              Privy::BridgeBrlFiatVirtualAccountDepositInstructions::OrHash,
              Privy::BridgeGbpFiatVirtualAccountDepositInstructions::OrHash
            ),
          destination: Privy::BridgeFiatVirtualAccountDestination::OrHash,
          provider: Privy::BridgeFiatVirtualAccountResponse::Provider::OrSymbol,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The deposit instructions for a virtual account.
        deposit_instructions:,
        destination:,
        provider:,
        status:
      )
      end

      sig do
        override.returns(
          {
            deposit_instructions:
              T.any(
                Privy::BridgeUsdFiatVirtualAccountDepositInstructions,
                Privy::BridgeEurFiatVirtualAccountDepositInstructions,
                Privy::BridgeMxnFiatVirtualAccountDepositInstructions,
                Privy::BridgeBrlFiatVirtualAccountDepositInstructions,
                Privy::BridgeGbpFiatVirtualAccountDepositInstructions
              ),
            destination: Privy::BridgeFiatVirtualAccountDestination,
            provider:
              Privy::BridgeFiatVirtualAccountResponse::Provider::OrSymbol,
            status: String
          }
        )
      end
      def to_hash
      end

      module Provider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeFiatVirtualAccountResponse::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::BridgeFiatVirtualAccountResponse::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeFiatVirtualAccountResponse::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
