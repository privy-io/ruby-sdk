# typed: strong

module Privy
  module Models
    class WalletAuthenticateWithJwtParams < Privy::Models::WalletAuthenticateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAuthenticateWithJwtParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Privy::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Privy::RequestOptions }) }
      def to_hash
      end
    end
  end
end
