# typed: strong

module Privy
  module Models
    class KyxEndorsement < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KyxEndorsement, Privy::Internal::AnyHash) }

      # Missing requirements, or null if complete.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :missing

      # Endorsement identifier.
      sig { returns(String) }
      attr_accessor :name

      # Status of an endorsement. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :status

      # An endorsement with its approval status and missing requirements.
      sig do
        params(
          missing: T.nilable(T::Array[String]),
          name: String,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Missing requirements, or null if complete.
        missing:,
        # Endorsement identifier.
        name:,
        # Status of an endorsement. Passthrough from the provider.
        status:
      )
      end

      sig do
        override.returns(
          { missing: T.nilable(T::Array[String]), name: String, status: String }
        )
      end
      def to_hash
      end
    end
  end
end
