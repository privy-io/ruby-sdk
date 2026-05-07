# typed: strong

module Privy
  module Models
    # The request input for creating virtual account.
    module FiatVirtualAccountRequest
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::BridgeFiatVirtualAccountRequest,
            Privy::BridgeSandboxFiatVirtualAccountRequest
          )
        end

      sig do
        override.returns(T::Array[Privy::FiatVirtualAccountRequest::Variants])
      end
      def self.variants
      end
    end
  end
end
