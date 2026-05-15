# typed: strong

module Privy
  module Models
    # A member of an intent authorization quorum. Can be a user, key, or nested key
    # quorum.
    module IntentAuthorizationMember
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::IntentAuthorizationMember::UserMember,
            Privy::IntentAuthorizationMember::KeyMember,
            Privy::IntentAuthorizationMember::KeyQuorumMember
          )
        end

      class UserMember < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::IntentAuthorizationMember::UserMember,
              Privy::Internal::AnyHash
            )
          end

        # Unix timestamp when this member signed, or null if not yet signed.
        sig { returns(T.nilable(Float)) }
        attr_accessor :signed_at

        sig do
          returns(
            Privy::IntentAuthorizationMember::UserMember::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # User ID of the key quorum member
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            signed_at: T.nilable(Float),
            type: Privy::IntentAuthorizationMember::UserMember::Type::OrSymbol,
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
                Privy::IntentAuthorizationMember::UserMember::Type::TaggedSymbol,
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
              T.all(Symbol, Privy::IntentAuthorizationMember::UserMember::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USER =
            T.let(
              :user,
              Privy::IntentAuthorizationMember::UserMember::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::IntentAuthorizationMember::UserMember::Type::TaggedSymbol
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
              Privy::IntentAuthorizationMember::KeyMember,
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
            Privy::IntentAuthorizationMember::KeyMember::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            public_key: String,
            signed_at: T.nilable(Float),
            type: Privy::IntentAuthorizationMember::KeyMember::Type::OrSymbol
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
                Privy::IntentAuthorizationMember::KeyMember::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::IntentAuthorizationMember::KeyMember::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          KEY =
            T.let(
              :key,
              Privy::IntentAuthorizationMember::KeyMember::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::IntentAuthorizationMember::KeyMember::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class KeyQuorumMember < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::IntentAuthorizationMember::KeyQuorumMember,
              Privy::Internal::AnyHash
            )
          end

        # ID of the child key quorum member
        sig { returns(String) }
        attr_accessor :key_quorum_id

        # Members of this child quorum
        sig do
          returns(T::Array[Privy::IntentAuthorizationKeyQuorumMember::Variants])
        end
        attr_accessor :members

        # Number of signatures required from this child quorum
        sig { returns(Float) }
        attr_accessor :threshold

        # Whether this child key quorum has met its signature threshold
        sig { returns(T::Boolean) }
        attr_accessor :threshold_met

        sig do
          returns(
            Privy::IntentAuthorizationMember::KeyQuorumMember::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Display name for the child key quorum (if any)
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig do
          params(
            key_quorum_id: String,
            members:
              T::Array[
                T.any(
                  Privy::IntentAuthorizationKeyQuorumMember::UserMember::OrHash,
                  Privy::IntentAuthorizationKeyQuorumMember::KeyMember::OrHash
                )
              ],
            threshold: Float,
            threshold_met: T::Boolean,
            type:
              Privy::IntentAuthorizationMember::KeyQuorumMember::Type::OrSymbol,
            display_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the child key quorum member
          key_quorum_id:,
          # Members of this child quorum
          members:,
          # Number of signatures required from this child quorum
          threshold:,
          # Whether this child key quorum has met its signature threshold
          threshold_met:,
          type:,
          # Display name for the child key quorum (if any)
          display_name: nil
        )
        end

        sig do
          override.returns(
            {
              key_quorum_id: String,
              members:
                T::Array[Privy::IntentAuthorizationKeyQuorumMember::Variants],
              threshold: Float,
              threshold_met: T::Boolean,
              type:
                Privy::IntentAuthorizationMember::KeyQuorumMember::Type::TaggedSymbol,
              display_name: String
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
                Privy::IntentAuthorizationMember::KeyQuorumMember::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          KEY_QUORUM =
            T.let(
              :key_quorum,
              Privy::IntentAuthorizationMember::KeyQuorumMember::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::IntentAuthorizationMember::KeyQuorumMember::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(T::Array[Privy::IntentAuthorizationMember::Variants])
      end
      def self.variants
      end
    end
  end
end
