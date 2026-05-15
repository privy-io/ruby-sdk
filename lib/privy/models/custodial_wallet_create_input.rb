# frozen_string_literal: true

module Privy
  module Models
    class CustodialWalletCreateInput < Privy::Internal::Type::BaseModel
      # @!attribute chain_type
      #   The chain type of the custodial wallet.
      #
      #   @return [Symbol, Privy::Models::CustodialWalletChainType]
      required :chain_type, enum: -> { Privy::CustodialWalletChainType }

      # @!attribute provider
      #   The provider of the custodial wallet.
      #
      #   @return [Symbol, Privy::Models::CustodialWalletProvider]
      required :provider, enum: -> { Privy::CustodialWalletProvider }

      # @!attribute provider_user_id
      #   The resource ID of the beneficiary of the custodial wallet, given by the
      #   licensing provider.
      #
      #   @return [String]
      required :provider_user_id, String

      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::AdditionalSignerItemInput>, nil]
      optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::AdditionalSignerItemInput] }

      # @!attribute owner
      #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #   null to remove the current owner.
      #
      #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
      optional :owner, union: -> { Privy::OwnerInput }, nil?: true

      # @!attribute policy_ids
      #   An optional list of up to one policy ID to enforce on the wallet.
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(chain_type:, provider:, provider_user_id:, additional_signers: nil, owner: nil, policy_ids: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CustodialWalletCreateInput} for more details.
      #
      #   The input for creating a custodial wallet.
      #
      #   @param chain_type [Symbol, Privy::Models::CustodialWalletChainType] The chain type of the custodial wallet.
      #
      #   @param provider [Symbol, Privy::Models::CustodialWalletProvider] The provider of the custodial wallet.
      #
      #   @param provider_user_id [String] The resource ID of the beneficiary of the custodial wallet, given by the licensi
      #
      #   @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
    end
  end
end
