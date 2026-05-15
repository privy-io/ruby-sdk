# typed: strong

module Privy
  module Models
    class UserGetByGitHubUsernameParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserGetByGitHubUsernameParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :username

      sig do
        params(
          username: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(username:, request_options: {})
      end

      sig do
        override.returns(
          { username: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
