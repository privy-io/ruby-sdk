# typed: strong

module Privy
  module Models
    class FarcasterV2InitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterV2InitRequestBody, Privy::Internal::AnyHash)
        end

      # The request body for initiating a Farcaster V2 connection.
      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
