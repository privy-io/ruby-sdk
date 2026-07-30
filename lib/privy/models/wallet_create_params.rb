# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#create
    class WalletCreateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute chain_type
      #   The wallet chain types.
      #
      #   @return [Symbol, Privy::Models::WalletChainType]
      required :chain_type, enum: -> { Privy::WalletChainType }

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

      # @!attribute entity
      #   The entity the wallet is attributed to.
      #
      #   @return [Privy::Models::WalletCreateParams::Entity, nil]
      optional :entity, -> { Privy::WalletCreateParams::Entity }

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

      # @!attribute privy_idempotency_key
      #   Idempotency keys ensure API requests are executed only once within a 24-hour
      #   window.
      #
      #   @return [String, nil]
      optional :privy_idempotency_key, String

      # @!method initialize(chain_type:, additional_signers: nil, display_name: nil, entity: nil, external_id: nil, owner: nil, owner_id: nil, policy_ids: nil, privy_idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletCreateParams} for more details.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      #   @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
      #
      #   @param display_name [String] A human-readable label for the wallet.
      #
      #   @param entity [Privy::Models::WalletCreateParams::Entity] The entity the wallet is attributed to.
      #
      #   @param external_id [String] A customer-provided identifier for mapping to external systems. URL-safe charact
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
      #
      #   @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
      #
      #   @param privy_idempotency_key [String] Idempotency keys ensure API requests are executed only once within a 24-hour win
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      class Entity < Privy::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::WalletCreateParams::Entity::Type]
        required :type, enum: -> { Privy::WalletCreateParams::Entity::Type }

        # @!method initialize(id:, type:)
        #   The entity the wallet is attributed to.
        #
        #   @param id [String]
        #   @param type [Symbol, Privy::Models::WalletCreateParams::Entity::Type]

        # @see Privy::Models::WalletCreateParams::Entity#type
        module Type
          extend Privy::Internal::Type::Enum

          USER = :user

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
