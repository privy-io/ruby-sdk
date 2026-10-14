# typed: strong

module Privy
  module Models
    # The type of identifier a denylist rule blocks.
    module DenylistRuleType
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Privy::DenylistRuleType::TaggedSymbol, String) }

      sig { override.returns(T::Array[Privy::DenylistRuleType::Variants]) }
      def self.variants
      end

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::DenylistRuleType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EMAIL = T.let(:email, Privy::DenylistRuleType::TaggedSymbol)
      EMAIL_DOMAIN = T.let(:emailDomain, Privy::DenylistRuleType::TaggedSymbol)
      PHONE = T.let(:phone, Privy::DenylistRuleType::TaggedSymbol)
      ETHEREUM_ADDRESS =
        T.let(:ethereumAddress, Privy::DenylistRuleType::TaggedSymbol)
      SOLANA_ADDRESS =
        T.let(:solanaAddress, Privy::DenylistRuleType::TaggedSymbol)
    end
  end
end
