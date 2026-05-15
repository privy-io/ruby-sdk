# typed: strong

module Privy
  module Models
    class PolicyIntentRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyIntentRequestDetails, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::PolicyIntentRequestDetails::Body) }
      attr_reader :body

      sig { params(body: Privy::PolicyIntentRequestDetails::Body::OrHash).void }
      attr_writer :body

      sig { returns(Privy::PolicyIntentRequestDetails::Method::OrSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for a policy intent.
      sig do
        params(
          body: Privy::PolicyIntentRequestDetails::Body::OrHash,
          method_: Privy::PolicyIntentRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(body:, method_:, url:)
      end

      sig do
        override.returns(
          {
            body: Privy::PolicyIntentRequestDetails::Body,
            method_: Privy::PolicyIntentRequestDetails::Method::OrSymbol,
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
              Privy::PolicyIntentRequestDetails::Body,
              Privy::Internal::AnyHash
            )
          end

        # Name to assign to policy.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        sig do
          returns(
            T.nilable(T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey))
          )
        end
        attr_accessor :owner

        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        sig { returns(T.nilable(String)) }
        attr_accessor :owner_id

        sig { returns(T.nilable(T::Array[Privy::PolicyRuleRequestBody])) }
        attr_reader :rules

        sig do
          params(rules: T::Array[Privy::PolicyRuleRequestBody::OrHash]).void
        end
        attr_writer :rules

        sig do
          params(
            name: String,
            owner:
              T.nilable(
                T.any(
                  Privy::OwnerInputUser::OrHash,
                  Privy::OwnerInputPublicKey::OrHash
                )
              ),
            owner_id: T.nilable(String),
            rules: T::Array[Privy::PolicyRuleRequestBody::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Name to assign to policy.
          name: nil,
          # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          # null to remove the current owner.
          owner: nil,
          # The key quorum ID to set as the owner of the resource. If you provide this, do
          # not specify an owner.
          owner_id: nil,
          rules: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              owner:
                T.nilable(
                  T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
                ),
              owner_id: T.nilable(String),
              rules: T::Array[Privy::PolicyRuleRequestBody]
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
            T.all(Symbol, Privy::PolicyIntentRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PATCH =
          T.let(:PATCH, Privy::PolicyIntentRequestDetails::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PolicyIntentRequestDetails::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
