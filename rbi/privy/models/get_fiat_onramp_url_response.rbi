# typed: strong

module Privy
  module Models
    # Provider session initialization — either a hosted URL or embedded SDK config.
    module GetFiatOnrampURLResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::FiatOnrampURLSessionResponse,
            Privy::FiatOnrampStripeSDKSessionResponse
          )
        end

      sig do
        override.returns(T::Array[Privy::GetFiatOnrampURLResponse::Variants])
      end
      def self.variants
      end
    end
  end
end
