# typed: strong

module Privy
  module Models
    class DenylistEntry < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::DenylistEntry, Privy::Internal::AnyHash) }

      # The ID of the denylist entry.
      sig { returns(String) }
      attr_accessor :id

      # The type of identifier a denylist rule blocks.
      sig { returns(Privy::DenylistRuleType::Variants) }
      attr_accessor :rule_type

      # The blocked identifier.
      sig { returns(String) }
      attr_accessor :value

      # A denylist entry for an app.
      sig do
        params(
          id: String,
          rule_type: T.any(Privy::DenylistRuleType::OrSymbol, String),
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the denylist entry.
        id:,
        # The type of identifier a denylist rule blocks.
        rule_type:,
        # The blocked identifier.
        value:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            rule_type: Privy::DenylistRuleType::Variants,
            value: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
