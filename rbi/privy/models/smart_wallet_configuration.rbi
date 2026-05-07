# typed: strong

module Privy
  module Models
    # The configuration object for smart wallets.
    module SmartWalletConfiguration
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SmartWalletConfigurationDisabled,
            Privy::SmartWalletConfigurationEnabled
          )
        end

      sig do
        override.returns(T::Array[Privy::SmartWalletConfiguration::Variants])
      end
      def self.variants
      end
    end
  end
end
