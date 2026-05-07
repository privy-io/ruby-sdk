# typed: strong

module Privy
  module Models
    # Input for creating a digital asset account.
    module CreateAccountInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::CreateAccountFromWalletsConfigurationInput,
            Privy::CreateAccountFromWalletIDsInput
          )
        end

      sig { override.returns(T::Array[Privy::CreateAccountInput::Variants]) }
      def self.variants
      end
    end
  end
end
