# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#list
    class WalletListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute address
      #   A blockchain wallet address. Ethereum addresses are normalized to EIP-55
      #   checksum format. Solana addresses are validated as base58. All other chain
      #   addresses (Stellar, Tron, Sui, Aptos, etc.) are accepted as-is.
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute authorization_key
      #   Filter wallets by authorization public key. Returns wallets owned by key quorums
      #   that include the specified P-256 public key (base64-encoded DER format). Cannot
      #   be used together with user_id.
      #
      #   @return [String, nil]
      optional :authorization_key, String

      # @!attribute chain_type
      #   The wallet chain types.
      #
      #   @return [Symbol, Privy::Models::WalletChainType, nil]
      optional :chain_type, enum: -> { Privy::WalletChainType }

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute external_id
      #   Filter wallets by external ID.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute include_archived
      #   Include archived wallets in lookup. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_archived, Privy::Internal::Type::Boolean

      # @!attribute limit
      #
      #   @return [Float, nil]
      optional :limit, Float, nil?: true

      # @!attribute user_id
      #   Filter wallets by user ID. Cannot be used together with authorization_key.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(address: nil, authorization_key: nil, chain_type: nil, cursor: nil, external_id: nil, include_archived: nil, limit: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletListParams} for more details.
      #
      #   @param address [String] A blockchain wallet address. Ethereum addresses are normalized to EIP-55 checksu
      #
      #   @param authorization_key [String] Filter wallets by authorization public key. Returns wallets owned by key quorums
      #
      #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      #   @param cursor [String]
      #
      #   @param external_id [String] Filter wallets by external ID.
      #
      #   @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
      #
      #   @param limit [Float, nil]
      #
      #   @param user_id [String] Filter wallets by user ID. Cannot be used together with authorization_key.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
