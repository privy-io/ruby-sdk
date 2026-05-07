# typed: strong

module Privy
  module Models
    # The type of OAuth authorization code.
    module OAuthCodeType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OAuthCodeType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RAW = T.let(:raw, Privy::OAuthCodeType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::OAuthCodeType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
