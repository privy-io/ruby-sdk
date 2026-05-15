# typed: strong

module Privy
  module Models
    # Input for adding or removing an allowlist entry. Discriminated by type.
    module UserInviteInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EmailInviteInput,
            Privy::EmailDomainInviteInput,
            Privy::WalletInviteInput,
            Privy::PhoneInviteInput
          )
        end

      sig { override.returns(T::Array[Privy::UserInviteInput::Variants]) }
      def self.variants
      end
    end
  end
end
