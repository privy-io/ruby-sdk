# typed: strong

module Privy
  module Models
    class IntentAuthorization < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentAuthorization, Privy::Internal::AnyHash)
        end

      # Members in this authorization quorum
      sig { returns(T::Array[Privy::IntentAuthorizationMember::Variants]) }
      attr_accessor :members

      # Number of signatures required to satisfy this quorum
      sig { returns(Float) }
      attr_accessor :threshold

      # Display name of the key quorum
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Authorization quorum for an intent
      sig do
        params(
          members:
            T::Array[
              T.any(
                Privy::IntentAuthorizationUserMember::OrHash,
                Privy::IntentAuthorizationKeyMember::OrHash,
                Privy::IntentAuthorizationKeyQuorum::OrHash
              )
            ],
          threshold: Float,
          display_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Members in this authorization quorum
        members:,
        # Number of signatures required to satisfy this quorum
        threshold:,
        # Display name of the key quorum
        display_name: nil
      )
      end

      sig do
        override.returns(
          {
            members: T::Array[Privy::IntentAuthorizationMember::Variants],
            threshold: Float,
            display_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
