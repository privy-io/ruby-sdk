# typed: strong

module Privy
  module Models
    # A leaf member (user or key) of a nested key quorum in an intent authorization.
    module IntentAuthorizationKeyQuorumMember
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::IntentAuthorizationKeyQuorumMember::UserMember,
            Privy::IntentAuthorizationKeyQuorumMember::KeyMember
          )
        end

      class UserMember < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::IntentAuthorizationKeyQuorumMember::UserMember,
              Privy::Internal::AnyHash
            )
          end

        # Unix timestamp when this member signed, or null if not yet signed.
        sig { returns(T.nilable(Float)) }
        attr_accessor :signed_at

        sig do
          returns(
            Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # User ID of the key quorum member
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            signed_at: T.nilable(Float),
            type:
              Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type::OrSymbol,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unix timestamp when this member signed, or null if not yet signed.
          signed_at:,
          type:,
          # User ID of the key quorum member
          user_id:
        )
        end

        sig do
          override.returns(
            {
              signed_at: T.nilable(Float),
              type:
                Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type::TaggedSymbol,
              user_id: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USER =
            T.let(
              :user,
              Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class KeyMember < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::IntentAuthorizationKeyQuorumMember::KeyMember,
              Privy::Internal::AnyHash
            )
          end

        # Public key of the key quorum member
        sig { returns(String) }
        attr_accessor :public_key

        # Unix timestamp when this member signed, or null if not yet signed.
        sig { returns(T.nilable(Float)) }
        attr_accessor :signed_at

        sig do
          returns(
            Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            public_key: String,
            signed_at: T.nilable(Float),
            type:
              Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Public key of the key quorum member
          public_key:,
          # Unix timestamp when this member signed, or null if not yet signed.
          signed_at:,
          type:
        )
        end

        sig do
          override.returns(
            {
              public_key: String,
              signed_at: T.nilable(Float),
              type:
                Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          KEY =
            T.let(
              :key,
              Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Privy::IntentAuthorizationKeyQuorumMember::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
