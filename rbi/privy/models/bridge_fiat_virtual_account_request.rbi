# typed: strong

module Privy
  module Models
    class BridgeFiatVirtualAccountRequest < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeFiatVirtualAccountRequest,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::BridgeFiatVirtualAccountDestination) }
      attr_reader :destination

      sig do
        params(
          destination: Privy::BridgeFiatVirtualAccountDestination::OrHash
        ).void
      end
      attr_writer :destination

      sig do
        returns(Privy::BridgeFiatVirtualAccountRequest::Provider::OrSymbol)
      end
      attr_accessor :provider

      sig { returns(Privy::BridgeFiatVirtualAccountSource) }
      attr_reader :source

      sig { params(source: Privy::BridgeFiatVirtualAccountSource::OrHash).void }
      attr_writer :source

      # The request input for creating virtual account.
      sig do
        params(
          destination: Privy::BridgeFiatVirtualAccountDestination::OrHash,
          provider: Privy::BridgeFiatVirtualAccountRequest::Provider::OrSymbol,
          source: Privy::BridgeFiatVirtualAccountSource::OrHash
        ).returns(T.attached_class)
      end
      def self.new(destination:, provider:, source:)
      end

      sig do
        override.returns(
          {
            destination: Privy::BridgeFiatVirtualAccountDestination,
            provider:
              Privy::BridgeFiatVirtualAccountRequest::Provider::OrSymbol,
            source: Privy::BridgeFiatVirtualAccountSource
          }
        )
      end
      def to_hash
      end

      module Provider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeFiatVirtualAccountRequest::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::BridgeFiatVirtualAccountRequest::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeFiatVirtualAccountRequest::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
