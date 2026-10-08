# typed: strong

module Privy
  module Models
    # The individual or business that owns the account. Required for `iban`, `gb`, and
    # `swift` accounts.
    module ExternalFiatAccountOwner
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::ExternalFiatAccountIndividualOwner,
            Privy::ExternalFiatAccountBusinessOwner
          )
        end

      sig do
        override.returns(T::Array[Privy::ExternalFiatAccountOwner::Variants])
      end
      def self.variants
      end
    end
  end
end
