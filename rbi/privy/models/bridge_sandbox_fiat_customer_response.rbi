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

      # Status of the KYC verification process.
      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeSandboxFiatCustomerResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_FOUND =
          T.let(
            :not_found,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        AWAITING_QUESTIONNAIRE =
          T.let(
            :awaiting_questionnaire,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        AWAITING_UBO =
          T.let(
            :awaiting_ubo,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        INCOMPLETE =
          T.let(
            :incomplete,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        NOT_STARTED =
          T.let(
            :not_started,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        OFFBOARDED =
          T.let(
            :offboarded,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )
        UNDER_REVIEW =
          T.let(
            :under_review,
            Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeSandboxFiatCustomerResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
