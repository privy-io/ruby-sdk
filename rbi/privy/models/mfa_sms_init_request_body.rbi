# typed: strong

module Privy
  module Models
    # The request body for initiating a SMS MFA flow.
    module MfaSMSInitRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::MfaSMSInitVerifyInput, Privy::MfaSMSInitEnrollInput)
        end

      sig { override.returns(T::Array[Privy::MfaSMSInitRequestBody::Variants]) }
      def self.variants
      end
    end
  end
end
