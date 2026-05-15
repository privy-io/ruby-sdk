# typed: strong

module Privy
  module Models
    class UserGetByEmailAddressParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserGetByEmailAddressParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig do
        params(
          address: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(address:, request_options: {})
      end

      sig do
        override.returns(
          { address: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
