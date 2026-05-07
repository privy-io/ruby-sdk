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

        sig { returns(Privy::WalletIntentResponse::RequestDetails::Body) }
        attr_reader :body

        sig do
          params(
            body: Privy::WalletIntentResponse::RequestDetails::Body::OrHash
          ).void
        end
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
            body: Privy::WalletIntentResponse::RequestDetails::Body::OrHash,
            method_:
              Privy::WalletIntentResponse::RequestDetails::Method::OrSymbol,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(body:, method_:, url:)
        end

        sig do
          override.returns(
            {
              body: Privy::WalletIntentResponse::RequestDetails::Body,
              method_:
                Privy::WalletIntentResponse::RequestDetails::Method::TaggedSymbol,
              url: String
            }
          )
        end
        def to_hash
        end

        class Body < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::WalletIntentResponse::RequestDetails::Body,
                Privy::Internal::AnyHash
              )
            end

          # Additional signers for the wallet.
          sig { returns(T.nilable(T::Array[Privy::AdditionalSignerItemInput])) }
          attr_reader :additional_signers

          sig do
            params(
              additional_signers:
                T::Array[Privy::AdditionalSignerItemInput::OrHash]
            ).void
          end
          attr_writer :additional_signers

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :authorization_key_ids

          sig { params(authorization_key_ids: T::Array[String]).void }
          attr_writer :authorization_key_ids

          sig { returns(T.nilable(Float)) }
          attr_reader :authorization_threshold

          sig { params(authorization_threshold: Float).void }
          attr_writer :authorization_threshold

          sig { returns(T.nilable(String)) }
          attr_accessor :display_name

          # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          # null to remove the current owner.
          sig { returns(T.nilable(Privy::OwnerInput::Variants)) }
          attr_accessor :owner

          # The key quorum ID to set as the owner of the resource. If you provide this, do
          # not specify an owner.
          sig { returns(T.nilable(String)) }
          attr_accessor :owner_id

          # An optional list of up to one policy ID to enforce on the wallet.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :policy_ids

          sig { params(policy_ids: T::Array[String]).void }
          attr_writer :policy_ids

          sig do
            params(
              additional_signers:
                T::Array[Privy::AdditionalSignerItemInput::OrHash],
              authorization_key_ids: T::Array[String],
              authorization_threshold: Float,
              display_name: T.nilable(String),
              owner:
                T.nilable(
                  T.any(
                    Privy::OwnerInputUser::OrHash,
                    Privy::OwnerInputPublicKey::OrHash
                  )
                ),
              owner_id: T.nilable(String),
              policy_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Additional signers for the wallet.
            additional_signers: nil,
            authorization_key_ids: nil,
            authorization_threshold: nil,
            display_name: nil,
            # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
            # null to remove the current owner.
            owner: nil,
            # The key quorum ID to set as the owner of the resource. If you provide this, do
            # not specify an owner.
            owner_id: nil,
            # An optional list of up to one policy ID to enforce on the wallet.
            policy_ids: nil
          )
          end

          sig do
            override.returns(
              {
                additional_signers: T::Array[Privy::AdditionalSignerItemInput],
                authorization_key_ids: T::Array[String],
                authorization_threshold: Float,
                display_name: T.nilable(String),
                owner: T.nilable(Privy::OwnerInput::Variants),
                owner_id: T.nilable(String),
                policy_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end
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
