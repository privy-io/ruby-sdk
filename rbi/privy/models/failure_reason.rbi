# typed: strong

module Privy
  module Models
    class FailureReason < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::FailureReason, Privy::Internal::AnyHash) }

      # Human-readable failure message.
      sig { returns(String) }
      attr_accessor :message

      # Additional error details, if available.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :details

      sig { params(details: T.anything).void }
      attr_writer :details

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig do
        params(message: String, details: T.anything).returns(T.attached_class)
      end
      def self.new(
        # Human-readable failure message.
        message:,
        # Additional error details, if available.
        details: nil
      )
      end

      sig { override.returns({ message: String, details: T.anything }) }
      def to_hash
      end
    end
  end
end
