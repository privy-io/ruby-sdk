# typed: strong

module Privy
  module Models
    # The response for creating virtual account.
    module FiatVirtualAccountResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::BridgeFiatVirtualAccountResponse,
            Privy::BridgeSandboxFiatVirtualAccountResponse
          )
        end

      sig do
        override.returns(T::Array[Privy::FiatVirtualAccountResponse::Variants])
      end
      def self.variants
      end
    end
  end
end
