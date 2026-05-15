# typed: strong

module Privy
  module Models
    class MfaEnabledWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaEnabledWebhookPayload, Privy::Internal::AnyHash)
        end

      # The MFA method that was enabled.
      sig { returns(Privy::MfaEnabledWebhookPayload::Method::TaggedSymbol) }
      attr_accessor :method_

      # The type of webhook event.
      sig { returns(Privy::MfaEnabledWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the user who enabled MFA.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the mfa.enabled webhook event.
      sig do
        params(
          method_: Privy::MfaEnabledWebhookPayload::Method::OrSymbol,
          type: Privy::MfaEnabledWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The MFA method that was enabled.
        method_:,
        # The type of webhook event.
        type:,
        # The ID of the user who enabled MFA.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::MfaEnabledWebhookPayload::Method::TaggedSymbol,
            type: Privy::MfaEnabledWebhookPayload::Type::TaggedSymbol,
            user_id: String
          }
        )
      end
      def to_hash
      end

      # The MFA method that was enabled.
      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::MfaEnabledWebhookPayload::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS = T.let(:sms, Privy::MfaEnabledWebhookPayload::Method::TaggedSymbol)
        TOTP =
          T.let(:totp, Privy::MfaEnabledWebhookPayload::Method::TaggedSymbol)
        PASSKEY =
          T.let(:passkey, Privy::MfaEnabledWebhookPayload::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::MfaEnabledWebhookPayload::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::MfaEnabledWebhookPayload::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MFA_ENABLED =
          T.let(
            :"mfa.enabled",
            Privy::MfaEnabledWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::MfaEnabledWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
