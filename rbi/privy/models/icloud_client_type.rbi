# typed: strong

module Privy
  module Models
    # The client type for iCloud recovery operations.
    module ICloudClientType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::ICloudClientType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WEB = T.let(:web, Privy::ICloudClientType::TaggedSymbol)
      EXPO_IOS = T.let(:"expo-ios", Privy::ICloudClientType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::ICloudClientType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
