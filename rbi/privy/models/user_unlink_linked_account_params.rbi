# typed: strong

module Privy
  module Models
    class UserUnlinkLinkedAccountParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserUnlinkLinkedAccountParams, Privy::Internal::AnyHash)
        end

      # ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(String) }
      attr_accessor :handle

      # The possible types of linked accounts.
      sig { returns(T.any(Privy::LinkedAccountType::OrSymbol, String)) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :provider

      sig { params(provider: String).void }
      attr_writer :provider

      sig do
        params(
          user_id: String,
          handle: String,
          type: T.any(Privy::LinkedAccountType::OrSymbol, String),
          provider: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the user.
        user_id:,
        handle:,
        # The possible types of linked accounts.
        type:,
        provider: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_id: String,
            handle: String,
            type: T.any(Privy::LinkedAccountType::OrSymbol, String),
            provider: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
