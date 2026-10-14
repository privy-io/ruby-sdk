# typed: strong

module Privy
  module Models
    class DenylistEntryDeleteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistEntryDeleteRequestBody, Privy::Internal::AnyHash)
        end

      # The ID of the denylist entry to remove.
      sig { returns(String) }
      attr_accessor :id

      # Input for removing a denylist entry.
      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The ID of the denylist entry to remove.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
