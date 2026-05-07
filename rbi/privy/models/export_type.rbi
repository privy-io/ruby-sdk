# typed: strong

module Privy
  module Models
    # The export type. 'display' is for showing the key to the user in the UI,
    # 'client' is for exporting to the client application.
    module ExportType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::ExportType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DISPLAY = T.let(:display, Privy::ExportType::TaggedSymbol)
      CLIENT = T.let(:client, Privy::ExportType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::ExportType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
