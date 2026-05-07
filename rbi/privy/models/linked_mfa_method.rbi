# typed: strong

module Privy
  module Models
    # A multi-factor authentication method linked to the user.
    module LinkedMfaMethod
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SMSMfaMethod,
            Privy::TotpMfaMethod,
            Privy::PasskeyMfaMethod
          )
        end

      sig { override.returns(T::Array[Privy::LinkedMfaMethod::Variants]) }
      def self.variants
      end
    end
  end
end
