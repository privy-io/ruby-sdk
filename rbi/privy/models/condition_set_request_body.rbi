# typed: strong

module Privy
  module Models
    class ConditionSetRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetRequestBody, Privy::Internal::AnyHash)
        end

      # Name to assign to condition set.
      sig { returns(String) }
      attr_accessor :name

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

      # Request body for creating a condition set.
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
          owner_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Name to assign to condition set.
        name:,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil
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
            owner_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
