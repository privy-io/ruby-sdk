# typed: strong

module Privy
  module Models
    class UserGetByTwitterSubjectParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserGetByTwitterSubjectParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig do
        params(
          subject: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(subject:, request_options: {})
      end

      sig do
        override.returns(
          { subject: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
