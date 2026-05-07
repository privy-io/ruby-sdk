# typed: strong

module Privy
  module Models
    # The input configuration object for smart wallets.
    module SmartWalletConfigurationInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SmartWalletConfigurationDisabled,
            Privy::SmartWalletConfigurationInputEnabled
          )
        end

      sig do
        override.returns(
          T::Array[Privy::SmartWalletConfigurationInput::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
