# typed: strong

module Privy
  module Models
    # Input for adding a denylist entry. Discriminated by type.
    module DenylistEntryCreateRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::DenylistEmailInput,
            Privy::DenylistEmailDomainInput,
            Privy::DenylistPhoneInput,
            Privy::DenylistEthereumAddressInput,
            Privy::DenylistSolanaAddressInput
          )
        end

      sig do
        override.returns(
          T::Array[Privy::DenylistEntryCreateRequestBody::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
