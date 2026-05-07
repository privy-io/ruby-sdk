# typed: strong

module Privy
  module Models
    class SmartWalletConfigurationInputEnabled < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SmartWalletConfigurationInputEnabled,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::SmartWalletNetworkConfigurationInput]) }
      attr_accessor :configured_networks

      sig do
        returns(Privy::SmartWalletConfigurationInputEnabled::Enabled::OrBoolean)
      end
      attr_accessor :enabled

      # The supported smart wallet providers.
      sig { returns(Privy::SmartWalletType::OrSymbol) }
      attr_accessor :smart_wallet_type

      sig { returns(T.nilable(String)) }
      attr_accessor :smart_wallet_version

      # An enabled smart wallet configuration input.
      sig do
        params(
          configured_networks:
            T::Array[Privy::SmartWalletNetworkConfigurationInput::OrHash],
          enabled:
            Privy::SmartWalletConfigurationInputEnabled::Enabled::OrBoolean,
          smart_wallet_type: Privy::SmartWalletType::OrSymbol,
          smart_wallet_version: T.nilable(String)
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
              T::Array[Privy::SmartWalletNetworkConfigurationInput],
            enabled:
              Privy::SmartWalletConfigurationInputEnabled::Enabled::OrBoolean,
            smart_wallet_type: Privy::SmartWalletType::OrSymbol,
            smart_wallet_version: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Enabled
        extend Privy::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Privy::SmartWalletConfigurationInputEnabled::Enabled
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Privy::SmartWalletConfigurationInputEnabled::Enabled::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Privy::SmartWalletConfigurationInputEnabled::Enabled::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
