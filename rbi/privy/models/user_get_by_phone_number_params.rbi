# typed: strong

module Privy
  module Models
    class UserGetByPhoneNumberParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserGetByPhoneNumberParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :number

      sig do
        params(
          number: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(number:, request_options: {})
      end

      sig do
        override.returns(
          { number: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
