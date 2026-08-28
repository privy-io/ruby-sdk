# typed: strong

module Privy
  module Models
    # The request body for transferring an OAuth account.
    module OAuthTransferRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::OAuthTransferNativeSDKRequestBody,
            Privy::OAuthTransferWebSDKRequestBody
          )
        end

      sig do
        override.returns(T::Array[Privy::OAuthTransferRequestBody::Variants])
      end
      def self.variants
      end
    end
  end
end
