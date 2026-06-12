# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#create
    class Wallet < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique ID of the wallet. This will be the primary identifier when using the
      #   wallet in the future.
      #
      #   @return [String]
      required :id, String

      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::WalletAdditionalSignerItem>]
      required :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem] }

      # @!attribute address
      #   Address of the wallet.
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #   The wallet chain types.
      #
      #   @return [Symbol, Privy::Models::WalletChainType]
      required :chain_type, enum: -> { Privy::WalletChainType }

      # @!attribute created_at
      #   Unix timestamp of when the wallet was created in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute exported_at
      #   Unix timestamp of when the wallet was exported in milliseconds, if the wallet
      #   was exported.
      #
      #   @return [Float, nil]
      required :exported_at, Float, nil?: true

      # @!attribute imported_at
      #   Unix timestamp of when the wallet was imported in milliseconds, if the wallet
      #   was imported.
      #
      #   @return [Float, nil]
      required :imported_at, Float, nil?: true

      # @!attribute owner_id
      #   The key quorum ID of the owner of the wallet.
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute policy_ids
      #   List of policy IDs for policies that are enforced on the wallet.
      #
      #   @return [Array<String>]
      required :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute archived_at
      #   Unix timestamp of when the wallet was archived in milliseconds, or null if the
      #   wallet is active.
      #
      #   @return [Float, nil]
      optional :archived_at, Float, nil?: true

      # @!attribute authorization_threshold
      #   The number of keys that must sign for an action to be valid.
      #
      #   @return [Float, nil]
      optional :authorization_threshold, Float

      # @!attribute custody
      #   Information about the custodian managing this wallet.
      #
      #   @return [Privy::Models::WalletCustodian, nil]
      optional :custody, -> { Privy::WalletCustodian }

      # @!attribute display_name
      #   A human-readable label for the wallet.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute external_id
      #   A customer-provided identifier for mapping to external systems. Write-once, set
      #   only at creation.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute public_key
      #   The compressed, raw public key for the wallet along the chain cryptographic
      #   curve.
      #
      #   @return [String, nil]
      optional :public_key, String

      # @!method initialize(id:, additional_signers:, address:, chain_type:, created_at:, exported_at:, imported_at:, owner_id:, policy_ids:, archived_at: nil, authorization_threshold: nil, custody: nil, display_name: nil, external_id: nil, public_key: nil)
      #   Some parameter documentations has been truncated, see {Privy::Models::Wallet}
      #   for more details.
      #
      #   A wallet managed by Privy's wallet infrastructure.
      #
      #   @param id [String] Unique ID of the wallet. This will be the primary identifier when using the wall
      #
      #   @param additional_signers [Array<Privy::Models::WalletAdditionalSignerItem>] Additional signers for the wallet.
      #
      #   @param address [String] Address of the wallet.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      #   @param created_at [Float] Unix timestamp of when the wallet was created in milliseconds.
      #
      #   @param exported_at [Float, nil] Unix timestamp of when the wallet was exported in milliseconds, if the wallet wa
      #
      #   @param imported_at [Float, nil] Unix timestamp of when the wallet was imported in milliseconds, if the wallet wa
      #
      #   @param owner_id [String, nil] The key quorum ID of the owner of the wallet.
      #
      #   @param policy_ids [Array<String>] List of policy IDs for policies that are enforced on the wallet.
      #
      #   @param archived_at [Float, nil] Unix timestamp of when the wallet was archived in milliseconds, or null if the w
      #
      #   @param authorization_threshold [Float] The number of keys that must sign for an action to be valid.
      #
      #   @param custody [Privy::Models::WalletCustodian] Information about the custodian managing this wallet.
      #
      #   @param display_name [String] A human-readable label for the wallet.
      #
      #   @param external_id [String] A customer-provided identifier for mapping to external systems. Write-once, set
      #
      #   @param public_key [String] The compressed, raw public key for the wallet along the chain cryptographic curv
    end
  end
end
