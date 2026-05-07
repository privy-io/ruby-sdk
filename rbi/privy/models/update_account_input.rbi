# typed: strong

module Privy
  module Models
    # Input for updating a digital asset account.
    module UpdateAccountInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::UpdateAccountFromWalletsConfigurationInput,
            Privy::UpdateAccountFromWalletIDsInput
          )
        end

      sig { override.returns(T::Array[Privy::UpdateAccountInput::Variants]) }
      def self.variants
      end
    end
  end
end
