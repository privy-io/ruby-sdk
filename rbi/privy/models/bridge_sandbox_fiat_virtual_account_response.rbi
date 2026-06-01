# typed: strong

module Privy
  module Models
    class BridgeSandboxFiatVirtualAccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeSandboxFiatVirtualAccountResponse,
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

      # The destination chain, asset, and address for a virtual account transfer.
      sig { returns(Privy::BridgeFiatVirtualAccountDestination) }
      attr_reader :destination

      sig do
        params(
          destination: Privy::BridgeFiatVirtualAccountDestination::OrHash
        ).void
      end
      attr_writer :destination

      sig do
        returns(
          Privy::BridgeSandboxFiatVirtualAccountResponse::Provider::OrSymbol
        )
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
          provider:
            Privy::BridgeSandboxFiatVirtualAccountResponse::Provider::OrSymbol,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The deposit instructions for a virtual account.
        deposit_instructions:,
        # The destination chain, asset, and address for a virtual account transfer.
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
              Privy::BridgeSandboxFiatVirtualAccountResponse::Provider::OrSymbol,
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
            T.all(
              Symbol,
              Privy::BridgeSandboxFiatVirtualAccountResponse::Provider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE_SANDBOX =
          T.let(
            :"bridge-sandbox",
            Privy::BridgeSandboxFiatVirtualAccountResponse::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeSandboxFiatVirtualAccountResponse::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
