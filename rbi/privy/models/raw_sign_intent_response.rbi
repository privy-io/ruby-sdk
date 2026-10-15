# typed: strong

module Privy
  module Models
    class RawSignIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::RawSignIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::RawSignIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original raw sign request that would be sent to the wallet endpoint
      sig { returns(Privy::RawSignIntentResponse::RequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::RawSignIntentResponse::RequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of raw sign execution (only present if status is 'executed' or 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A wallet managed by Privy's wallet infrastructure.
      sig { returns(T.nilable(Privy::Wallet)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::Wallet::OrHash).void }
      attr_writer :current_resource_data

      # Response for a raw sign intent
      sig do
        params(
          intent_type: Privy::RawSignIntentResponse::IntentType::OrSymbol,
          request_details: Privy::RawSignIntentResponse::RequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Wallet::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original raw sign request that would be sent to the wallet endpoint
        request_details:,
        # Result of raw sign execution (only present if status is 'executed' or 'failed')
        action_result: nil,
        # A wallet managed by Privy's wallet infrastructure.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type: Privy::RawSignIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::RawSignIntentResponse::RequestDetails,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::Wallet
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::RawSignIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RAW_SIGN =
          T.let(
            :RAW_SIGN,
            Privy::RawSignIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::RawSignIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::RawSignIntentResponse::RequestDetails,
              Privy::Internal::AnyHash
            )
          end

        # Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
        # `hash_function` (to hash and then sign). These options are mutually exclusive.
        sig { returns(Privy::RawSignInput) }
        attr_reader :body

        sig { params(body: Privy::RawSignInput::OrHash).void }
        attr_writer :body

        sig do
          returns(
            Privy::RawSignIntentResponse::RequestDetails::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        sig { returns(String) }
        attr_accessor :url

        # The original raw sign request that would be sent to the wallet endpoint
        sig do
          params(
            body: Privy::RawSignInput::OrHash,
            method_:
              Privy::RawSignIntentResponse::RequestDetails::Method::OrSymbol,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
          # `hash_function` (to hash and then sign). These options are mutually exclusive.
          body:,
          method_:,
          url:
        )
        end

        sig do
          override.returns(
            {
              body: Privy::RawSignInput,
              method_:
                Privy::RawSignIntentResponse::RequestDetails::Method::TaggedSymbol,
              url: String
            }
          )
        end
        def to_hash
        end

        module Method
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::RawSignIntentResponse::RequestDetails::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Privy::RawSignIntentResponse::RequestDetails::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::RawSignIntentResponse::RequestDetails::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
