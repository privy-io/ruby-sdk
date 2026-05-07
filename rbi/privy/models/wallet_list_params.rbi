# typed: strong

module Privy
  module Models
    class WalletListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::WalletListParams, Privy::Internal::AnyHash)
        end

      # Filter wallets by authorization public key. Returns wallets owned by key quorums
      # that include the specified P-256 public key (base64-encoded DER format). Cannot
      # be used together with user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :authorization_key

      sig { params(authorization_key: String).void }
      attr_writer :authorization_key

      # The wallet chain types.
      sig { returns(T.nilable(Privy::WalletChainType::OrSymbol)) }
      attr_reader :chain_type

      sig { params(chain_type: Privy::WalletChainType::OrSymbol).void }
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter wallets by external ID.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      # Filter wallets by user ID. Cannot be used together with authorization_key.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          authorization_key: String,
          chain_type: Privy::WalletChainType::OrSymbol,
          cursor: String,
          external_id: String,
          limit: T.nilable(Float),
          user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter wallets by authorization public key. Returns wallets owned by key quorums
        # that include the specified P-256 public key (base64-encoded DER format). Cannot
        # be used together with user_id.
        authorization_key: nil,
        # The wallet chain types.
        chain_type: nil,
        cursor: nil,
        # Filter wallets by external ID.
        external_id: nil,
        limit: nil,
        # Filter wallets by user ID. Cannot be used together with authorization_key.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            authorization_key: String,
            chain_type: Privy::WalletChainType::OrSymbol,
            cursor: String,
            external_id: String,
            limit: T.nilable(Float),
            user_id: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
