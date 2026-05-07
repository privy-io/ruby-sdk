# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#_submit_import
    class WalletSubmitImportParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute wallet
      #   The submission input for importing an HD wallet.
      #
      #   @return [Privy::Models::HDSubmitInput, Privy::Models::PrivateKeySubmitInput]
      required :wallet, union: -> { Privy::WalletSubmitImportParams::Wallet }

      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::AdditionalSignerItemInput>, nil]
      optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::AdditionalSignerItemInput] }

      # @!attribute display_name
      #   A human-readable label for the wallet.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute external_id
      #   A customer-provided identifier for mapping to external systems. URL-safe
      #   characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
      #   after creation.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute owner
      #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #   null to remove the current owner.
      #
      #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
      optional :owner, union: -> { Privy::OwnerInput }, nil?: true

      # @!attribute owner_id
      #   The key quorum ID to set as the owner of the resource. If you provide this, do
      #   not specify an owner.
      #
      #   @return [String, nil]
      optional :owner_id, String, nil?: true

      # @!attribute policy_ids
      #   An optional list of up to one policy ID to enforce on the wallet.
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(wallet:, additional_signers: nil, display_name: nil, external_id: nil, owner: nil, owner_id: nil, policy_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletSubmitImportParams} for more details.
      #
      #   @param wallet [Privy::Models::HDSubmitInput, Privy::Models::PrivateKeySubmitInput] The submission input for importing an HD wallet.
      #
      #   @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
      #
      #   @param display_name [String] A human-readable label for the wallet.
      #
      #   @param external_id [String] A customer-provided identifier for mapping to external systems. URL-safe charact
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
      #
      #   @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      # The submission input for importing an HD wallet.
      module Wallet
        extend Privy::Internal::Type::Union

        discriminator :entropy_type

        # The submission input for importing an HD wallet.
        variant :hd, -> { Privy::HDSubmitInput }

        # The submission input for importing a private key wallet.
        variant :"private-key", -> { Privy::PrivateKeySubmitInput }

        # @!method self.variants
        #   @return [Array(Privy::Models::HDSubmitInput, Privy::Models::PrivateKeySubmitInput)]
      end
    end
  end
end
