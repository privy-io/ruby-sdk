# typed: strong

module Privy
  module Models
    class WalletIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::WalletIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::WalletIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original wallet update request that would be sent to the wallet endpoint
      sig { returns(Privy::WalletIntentResponse::RequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::WalletIntentResponse::RequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of wallet update execution (only present if status is 'executed' or
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

      # Response for a wallet intent
      sig do
        params(
          intent_type: Privy::WalletIntentResponse::IntentType::OrSymbol,
          request_details: Privy::WalletIntentResponse::RequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Wallet::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original wallet update request that would be sent to the wallet endpoint
        request_details:,
        # Result of wallet update execution (only present if status is 'executed' or
        # 'failed')
        action_result: nil,
        # A wallet managed by Privy's wallet infrastructure.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type: Privy::WalletIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::WalletIntentResponse::RequestDetails,
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
            T.all(Symbol, Privy::WalletIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET =
          T.let(:WALLET, Privy::WalletIntentResponse::IntentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletIntentResponse::RequestDetails,
              Privy::Internal::AnyHash
            )
          end

        # Request body for updating a wallet. `owner` and `owner_id` are mutually
        # exclusive.
        sig { returns(Privy::WalletUpdateRequestBody) }
        attr_reader :body

        sig { params(body: Privy::WalletUpdateRequestBody::OrHash).void }
        attr_writer :body

        sig do
          returns(
            Privy::WalletIntentResponse::RequestDetails::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        sig { returns(String) }
        attr_accessor :url

        # The original wallet update request that would be sent to the wallet endpoint
        sig do
          params(
            body: Privy::WalletUpdateRequestBody::OrHash,
            method_:
              Privy::WalletIntentResponse::RequestDetails::Method::OrSymbol,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Request body for updating a wallet. `owner` and `owner_id` are mutually
          # exclusive.
          body:,
          method_:,
          url:
        )
        end

        sig do
          override.returns(
            {
              body: Privy::WalletUpdateRequestBody,
              method_:
                Privy::WalletIntentResponse::RequestDetails::Method::TaggedSymbol,
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
              T.all(Symbol, Privy::WalletIntentResponse::RequestDetails::Method)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PATCH =
            T.let(
              :PATCH,
              Privy::WalletIntentResponse::RequestDetails::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::WalletIntentResponse::RequestDetails::Method::TaggedSymbol
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
