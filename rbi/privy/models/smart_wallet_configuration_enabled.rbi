# typed: strong

module Privy
  module Models
    class SmartWalletConfigurationEnabled < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SmartWalletConfigurationEnabled,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::SmartWalletNetworkConfiguration]) }
      attr_accessor :configured_networks

      sig do
        returns(Privy::SmartWalletConfigurationEnabled::Enabled::TaggedBoolean)
      end
      attr_accessor :enabled

      # The supported smart wallet providers.
      sig { returns(Privy::SmartWalletType::TaggedSymbol) }
      attr_accessor :smart_wallet_type

      sig { returns(T.nilable(String)) }
      attr_reader :smart_wallet_version

      sig { params(smart_wallet_version: String).void }
      attr_writer :smart_wallet_version

      # An enabled smart wallet configuration.
      sig do
        params(
          configured_networks:
            T::Array[Privy::SmartWalletNetworkConfiguration::OrHash],
          enabled: Privy::SmartWalletConfigurationEnabled::Enabled::OrBoolean,
          smart_wallet_type: Privy::SmartWalletType::OrSymbol,
          smart_wallet_version: String
        ).returns(T.attached_class)
      end
      def self.new(
        configured_networks:,
        enabled:,
        # The supported smart wallet providers.
        smart_wallet_type:,
        smart_wallet_version: nil
      )
      end

      sig do
        override.returns(
          {
            configured_networks:
              T::Array[Privy::SmartWalletNetworkConfiguration],
            enabled:
              Privy::SmartWalletConfigurationEnabled::Enabled::TaggedBoolean,
            smart_wallet_type: Privy::SmartWalletType::TaggedSymbol,
            smart_wallet_version: String
          }
        )
      end
      def to_hash
      end

      module Enabled
        extend Privy::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Privy::SmartWalletConfigurationEnabled::Enabled)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Privy::SmartWalletConfigurationEnabled::Enabled::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Privy::SmartWalletConfigurationEnabled::Enabled::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
