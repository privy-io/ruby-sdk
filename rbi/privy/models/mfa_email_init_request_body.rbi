# typed: strong

module Privy
  module Models
    # The request body for initiating an email MFA flow.
    module MfaEmailInitRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::MfaEmailInitVerifyInput, Privy::MfaEmailInitEnrollInput)
        end

      sig do
        override.returns(T::Array[Privy::MfaEmailInitRequestBody::Variants])
      end
      def self.variants
      end
    end
  end
end
