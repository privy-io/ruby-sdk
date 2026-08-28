# typed: strong

module Privy
  module Models
    class AutomationEarnDepositActionConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AutomationEarnDepositActionConfig,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::AutomationEarnDepositActionConfig::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :vault_id

      # Action configuration for depositing into an Earn vault.
      sig do
        params(
          type: Privy::AutomationEarnDepositActionConfig::Type::OrSymbol,
          vault_id: String
        ).returns(T.attached_class)
      end
      def self.new(type:, vault_id:)
      end

      sig do
        override.returns(
          {
            type: Privy::AutomationEarnDepositActionConfig::Type::OrSymbol,
            vault_id: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AutomationEarnDepositActionConfig::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EARN_DEPOSIT =
          T.let(
            :earn_deposit,
            Privy::AutomationEarnDepositActionConfig::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AutomationEarnDepositActionConfig::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
