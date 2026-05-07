# typed: strong

module Privy
  module Models
    class BridgeSandboxFiatCustomerResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeSandboxFiatCustomerResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :has_accepted_terms

      sig do
        returns(Privy::BridgeSandboxFiatCustomerResponse::Provider::OrSymbol)
      end
      attr_accessor :provider

      # Status of the KYC verification process.
      sig do
        returns(Privy::BridgeSandboxFiatCustomerResponse::Status::OrSymbol)
      end
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_reader :kyc_url

      sig { params(kyc_url: String).void }
      attr_writer :kyc_url

      sig { returns(T.nilable(T::Array[Privy::BridgeFiatRejectionReason])) }
      attr_reader :rejection_reasons

      sig do
        params(
          rejection_reasons: T::Array[Privy::BridgeFiatRejectionReason::OrHash]
        ).void
      end
      attr_writer :rejection_reasons

      # The response for getting a native onramp provider customer.
      sig do
        params(
          has_accepted_terms: T::Boolean,
          provider:
            Privy::BridgeSandboxFiatCustomerResponse::Provider::OrSymbol,
          status: Privy::BridgeSandboxFiatCustomerResponse::Status::OrSymbol,
          kyc_url: String,
          rejection_reasons: T::Array[Privy::BridgeFiatRejectionReason::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        has_accepted_terms:,
        provider:,
        # Status of the KYC verification process.
        status:,
        kyc_url: nil,
        rejection_reasons: nil
      )
      end

      sig do
        override.returns(
          {
            has_accepted_terms: T::Boolean,
            provider:
              Privy::BridgeSandboxFiatCustomerResponse::Provider::OrSymbol,
            status: Privy::BridgeSandboxFiatCustomerResponse::Status::OrSymbol,
            kyc_url: String,
            rejection_reasons: T::Array[Privy::BridgeFiatRejectionReason]
          }
        )
      end
      def to_hash
      end

      module Provider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeSandboxFiatCustomerResponse::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE_SANDBOX =
          T.let(
            :"bridge-sandbox",
            Privy::BridgeSandboxFiatCustomerResponse::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeSandboxFiatCustomerResponse::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
