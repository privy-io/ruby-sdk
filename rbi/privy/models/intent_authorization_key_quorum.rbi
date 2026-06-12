# typed: strong

module Privy
  module Models
    class IntentAuthorizationKeyQuorum < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentAuthorizationKeyQuorum, Privy::Internal::AnyHash)
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

      sig { returns(Privy::IntentAuthorizationKeyQuorum::Type::TaggedSymbol) }
      attr_accessor :type

      # Display name for the child key quorum (if any)
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # A nested key quorum member of an intent authorization quorum.
      sig do
        params(
          key_quorum_id: String,
          members:
            T::Array[
              T.any(
                Privy::IntentAuthorizationUserMember::OrHash,
                Privy::IntentAuthorizationKeyMember::OrHash
              )
            ],
          threshold: Float,
          threshold_met: T::Boolean,
          type: Privy::IntentAuthorizationKeyQuorum::Type::OrSymbol,
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
            type: Privy::IntentAuthorizationKeyQuorum::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::IntentAuthorizationKeyQuorum::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KEY_QUORUM =
          T.let(
            :key_quorum,
            Privy::IntentAuthorizationKeyQuorum::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::IntentAuthorizationKeyQuorum::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
