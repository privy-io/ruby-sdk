# typed: strong

module Privy
  module Models
    class WalletArchiveParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::WalletArchiveParams, Privy::Internal::AnyHash)
        end

      # ID of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      sig do
        params(
          wallet_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the wallet.
        wallet_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { wallet_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
