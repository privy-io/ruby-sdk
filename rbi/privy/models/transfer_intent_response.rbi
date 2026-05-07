# typed: strong

module Privy
  module Models
    class TransferIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::TransferIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::TransferIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original transfer request that would be sent to the wallet transfer endpoint
      sig { returns(Privy::TransferIntentResponse::RequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::TransferIntentResponse::RequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of transfer execution (only present if intent status is 'executed' or
      # 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A wallet managed by Privy's wallet infrastructure.
      sig { returns(T.nilable(Privy::Wallet)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::Wallet::OrHash).void }
      attr_writer :current_resource_data

      # Response for a transfer intent
      sig do
        params(
          intent_type: Privy::TransferIntentResponse::IntentType::OrSymbol,
          request_details:
            Privy::TransferIntentResponse::RequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Wallet::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original transfer request that would be sent to the wallet transfer endpoint
        request_details:,
        # Result of transfer execution (only present if intent status is 'executed' or
        # 'failed')
        action_result: nil,
        # A wallet managed by Privy's wallet infrastructure.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type:
              Privy::TransferIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::TransferIntentResponse::RequestDetails,
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
            T.all(Symbol, Privy::TransferIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(
            :TRANSFER,
            Privy::TransferIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TransferIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::TransferIntentResponse::RequestDetails,
              Privy::Internal::AnyHash
            )
          end

        # Request body for initiating a sponsored token transfer from an embedded wallet.
        sig { returns(Privy::TransferRequestBody) }
        attr_reader :body

        sig { params(body: Privy::TransferRequestBody::OrHash).void }
        attr_writer :body

        sig do
          returns(
            Privy::TransferIntentResponse::RequestDetails::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        sig { returns(String) }
        attr_accessor :url

        # The original transfer request that would be sent to the wallet transfer endpoint
        sig do
          params(
            body: Privy::TransferRequestBody::OrHash,
            method_:
              Privy::TransferIntentResponse::RequestDetails::Method::OrSymbol,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Request body for initiating a sponsored token transfer from an embedded wallet.
          body:,
          method_:,
          url:
        )
        end

        sig do
          override.returns(
            {
              body: Privy::TransferRequestBody,
              method_:
                Privy::TransferIntentResponse::RequestDetails::Method::TaggedSymbol,
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
                Privy::TransferIntentResponse::RequestDetails::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Privy::TransferIntentResponse::RequestDetails::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::TransferIntentResponse::RequestDetails::Method::TaggedSymbol
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
