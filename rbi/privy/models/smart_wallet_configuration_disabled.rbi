# typed: strong

module Privy
  module Models
    class SmartWalletConfigurationDisabled < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SmartWalletConfigurationDisabled,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SmartWalletConfigurationDisabled::Enabled::TaggedBoolean)
      end
      attr_accessor :enabled

      # A disabled smart wallet configuration.
      sig do
        params(
          enabled: Privy::SmartWalletConfigurationDisabled::Enabled::OrBoolean
        ).returns(T.attached_class)
      end
      def self.new(enabled:)
      end

      sig do
        override.returns(
          {
            enabled:
              Privy::SmartWalletConfigurationDisabled::Enabled::TaggedBoolean
          }
        )
      end
      def to_hash
      end

      module Enabled
        extend Privy::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Privy::SmartWalletConfigurationDisabled::Enabled)
          end
        OrBoolean = T.type_alias { T::Boolean }

        FALSE =
          T.let(
            false,
            Privy::SmartWalletConfigurationDisabled::Enabled::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Privy::SmartWalletConfigurationDisabled::Enabled::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
