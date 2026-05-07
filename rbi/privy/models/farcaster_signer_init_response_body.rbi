# typed: strong

module Privy
  module Models
    # The response body from initiating a Farcaster signer connection.
    module FarcasterSignerInitResponseBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::FarcasterSignerInitPendingApproval,
            Privy::FarcasterSignerApproved,
            Privy::FarcasterSignerRevoked
          )
        end

      sig do
        override.returns(
          T::Array[Privy::FarcasterSignerInitResponseBody::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
