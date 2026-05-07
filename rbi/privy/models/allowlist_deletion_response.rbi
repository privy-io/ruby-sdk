# typed: strong

module Privy
  module Models
    class AllowlistDeletionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AllowlistDeletionResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      # Confirmation response for deleting an allowlist entry.
      sig { params(message: String).returns(T.attached_class) }
      def self.new(message:)
      end

      sig { override.returns({ message: String }) }
      def to_hash
      end
    end
  end
end
