# typed: strong

module Privy
  module Models
    # Bank account details. The `type` field discriminates which shape applies.
    module ExternalFiatAccountData
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::ExternalFiatAccountUsData,
            Privy::ExternalFiatAccountGBData,
            Privy::ExternalFiatAccountPixData,
            Privy::ExternalFiatAccountIbanData,
            Privy::ExternalFiatAccountSwiftData
          )
        end

      sig do
        override.returns(T::Array[Privy::ExternalFiatAccountData::Variants])
      end
      def self.variants
      end
    end
  end
end
