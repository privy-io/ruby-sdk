# typed: strong

module Privy
  module Models
    # The response body from checking the status of a Farcaster signer connection.
    module FarcasterSignerStatusResponseBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::FarcasterSignerStatusPendingApproval,
            Privy::FarcasterSignerApproved,
            Privy::FarcasterSignerRevoked
          )
        end

      sig do
        override.returns(
          T::Array[Privy::FarcasterSignerStatusResponseBody::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
