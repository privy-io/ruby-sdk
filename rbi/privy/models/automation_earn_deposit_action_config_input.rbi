# typed: strong

module Privy
  module Models
    class AutomationEarnDepositActionConfigInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AutomationEarnDepositActionConfigInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::AutomationEarnDepositActionConfigInput::Type::OrSymbol)
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :vault_id

      # Action configuration for depositing into an Earn vault (input form).
      sig do
        params(
          type: Privy::AutomationEarnDepositActionConfigInput::Type::OrSymbol,
          vault_id: String
        ).returns(T.attached_class)
      end
      def self.new(type:, vault_id:)
      end

      sig do
        override.returns(
          {
            type: Privy::AutomationEarnDepositActionConfigInput::Type::OrSymbol,
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
            T.all(Symbol, Privy::AutomationEarnDepositActionConfigInput::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EARN_DEPOSIT =
          T.let(
            :earn_deposit,
            Privy::AutomationEarnDepositActionConfigInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AutomationEarnDepositActionConfigInput::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
