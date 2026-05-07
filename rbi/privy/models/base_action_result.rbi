# typed: strong

module Privy
  module Models
    class BaseActionResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BaseActionResult, Privy::Internal::AnyHash)
        end

      # Unix timestamp when the action was executed
      sig { returns(Float) }
      attr_accessor :executed_at

      # HTTP status code from the action execution
      sig { returns(Float) }
      attr_accessor :status_code

      # Display name of the key quorum that authorized execution
      sig { returns(T.nilable(String)) }
      attr_reader :authorized_by_display_name

      sig { params(authorized_by_display_name: String).void }
      attr_writer :authorized_by_display_name

      # ID of the key quorum that authorized execution
      sig { returns(T.nilable(String)) }
      attr_reader :authorized_by_id

      sig { params(authorized_by_id: String).void }
      attr_writer :authorized_by_id

      # Common fields for intent action execution results.
      sig do
        params(
          executed_at: Float,
          status_code: Float,
          authorized_by_display_name: String,
          authorized_by_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp when the action was executed
        executed_at:,
        # HTTP status code from the action execution
        status_code:,
        # Display name of the key quorum that authorized execution
        authorized_by_display_name: nil,
        # ID of the key quorum that authorized execution
        authorized_by_id: nil
      )
      end

      sig do
        override.returns(
          {
            executed_at: Float,
            status_code: Float,
            authorized_by_display_name: String,
            authorized_by_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
