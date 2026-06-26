# typed: strong

module Privy
  module Models
    # A string-encoded boolean query parameter on including current day profit and
    # loss.
    module KrakenEmbedIncludeCurrentDayPnlQueryParam
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRUE =
        T.let(
          :true,
          Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::TaggedSymbol
        )
      FALSE =
        T.let(
          :false,
          Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
