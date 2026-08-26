# typed: strong

module Privy
  module Models
    # Request body for creating a crypto deposit account.
    module CreateCryptoDepositAccountRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::CreateCryptoDepositAccountWithConfigRequestBody,
            Privy::CreateCryptoDepositAccountWithRouteRequestBody
          )
        end

      sig do
        override.returns(
          T::Array[Privy::CreateCryptoDepositAccountRequestBody::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
