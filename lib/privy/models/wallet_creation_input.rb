# frozen_string_literal: true

module Privy
  module Models
    class WalletCreationInput < Privy::Internal::Type::BaseModel
      # @!attribute chain_type
      #   The wallet chain types.
      #
      #   @return [Symbol, Privy::Models::WalletChainType]
      required :chain_type, enum: -> { Privy::WalletChainType }

      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::WalletCreationAdditionalSignerItem>, nil]
      optional :additional_signers,
               -> { Privy::Internal::Type::ArrayOf[Privy::WalletCreationAdditionalSignerItem] }

      # @!attribute create_smart_wallet
      #   Create a smart wallet with this wallet as the signer. Only supported for wallets
      #   with `chain_type: "ethereum"`.
      #
      #   @return [Boolean, nil]
      optional :create_smart_wallet, Privy::Internal::Type::Boolean

      # @!attribute policy_ids
      #   Policy IDs to enforce on the wallet. Currently, only one policy is supported per
      #   wallet.
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(chain_type:, additional_signers: nil, create_smart_wallet: nil, policy_ids: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletCreationInput} for more details.
      #
      #   The fields on wallet creation that can be specified when creating a
      #   user-controlled embedded server wallet.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      #   @param additional_signers [Array<Privy::Models::WalletCreationAdditionalSignerItem>] Additional signers for the wallet.
      #
      #   @param create_smart_wallet [Boolean] Create a smart wallet with this wallet as the signer. Only supported for wallets
      #
      #   @param policy_ids [Array<String>] Policy IDs to enforce on the wallet. Currently, only one policy is supported per
    end
  end
end
