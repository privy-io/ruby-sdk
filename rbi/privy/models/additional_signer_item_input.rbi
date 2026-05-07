# typed: strong

module Privy
  module Models
    class AdditionalSignerItemInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AdditionalSignerItemInput, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :signer_id

      # An optional list of up to one policy ID to enforce on the wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :override_policy_ids

      sig { params(override_policy_ids: T::Array[String]).void }
      attr_writer :override_policy_ids

      # A single additional signer for a wallet, with an optional policy override.
      sig do
        params(
          signer_id: String,
          override_policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a key quorum.
        signer_id:,
        # An optional list of up to one policy ID to enforce on the wallet.
        override_policy_ids: nil
      )
      end

      sig do
        override.returns(
          { signer_id: String, override_policy_ids: T::Array[String] }
        )
      end
      def to_hash
      end
    end
  end
end
