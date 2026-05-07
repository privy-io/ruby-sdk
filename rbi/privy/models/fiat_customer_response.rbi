# typed: strong

module Privy
  module Models
    # The response for getting a native onramp provider customer.
    module FiatCustomerResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::BridgeFiatCustomerResponse,
            Privy::BridgeSandboxFiatCustomerResponse
          )
        end

      sig { override.returns(T::Array[Privy::FiatCustomerResponse::Variants]) }
      def self.variants
      end
    end
  end
end
