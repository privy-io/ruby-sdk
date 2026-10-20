# typed: strong

module Privy
  module Models
    class KeyQuorumIntentDeleteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KeyQuorumIntentDeleteRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # Empty request body for a key quorum delete intent.
      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
