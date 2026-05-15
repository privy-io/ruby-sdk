# typed: strong

module Privy
  module Models
    class UserListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Privy::UserListParams, Privy::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      sig do
        params(
          cursor: String,
          limit: T.nilable(Float),
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(cursor: nil, limit: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            cursor: String,
            limit: T.nilable(Float),
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
