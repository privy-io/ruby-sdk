# typed: strong

module Privy
  module Models
    class MfaDisabledWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaDisabledWebhookPayload, Privy::Internal::AnyHash)
        end

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # A multi-factor authentication method supported by the app.
      sig { returns(Privy::MfaMethod::TaggedSymbol) }
      attr_accessor :method_

      # The type of webhook event.
      sig { returns(Privy::MfaDisabledWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the user who disabled MFA.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the mfa.disabled webhook event.
      sig do
        params(
          event_id: String,
          method_: Privy::MfaMethod::OrSymbol,
          type: Privy::MfaDisabledWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # A multi-factor authentication method supported by the app.
        method_:,
        # The type of webhook event.
        type:,
        # The ID of the user who disabled MFA.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            event_id: String,
            method_: Privy::MfaMethod::TaggedSymbol,
            type: Privy::MfaDisabledWebhookPayload::Type::TaggedSymbol,
            user_id: String
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::MfaDisabledWebhookPayload::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MFA_DISABLED =
          T.let(
            :"mfa.disabled",
            Privy::MfaDisabledWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::MfaDisabledWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
