# typed: strong

module Privy
  module Models
    class UserPregenerateWalletsParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserPregenerateWalletsParams, Privy::Internal::AnyHash)
        end

      # ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T::Array[Privy::WalletCreationInput]) }
      attr_accessor :wallets

      sig do
        params(
          user_id: String,
          wallets: T::Array[Privy::WalletCreationInput::OrHash],
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the user.
        user_id:,
        wallets:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_id: String,
            wallets: T::Array[Privy::WalletCreationInput],
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
