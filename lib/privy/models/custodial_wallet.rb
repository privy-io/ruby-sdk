# frozen_string_literal: true

module Privy
  module Models
    class CustodialWallet < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain
      #   The chain of the custodial wallet.
      #
      #   @return [Symbol, Privy::Models::CustodialWalletChain]
      required :chain, enum: -> { Privy::CustodialWalletChain }

      # @!attribute custody
      #   Information about the custodian managing this wallet.
      #
      #   @return [Privy::Models::WalletCustodian]
      required :custody, -> { Privy::WalletCustodian }

      # @!attribute owner_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::WalletAdditionalSignerItem>, nil]
      optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem] }

      # @!attribute chain_type
      #   @deprecated
      #
      #   The chain type of the custodial wallet (deprecated).
      #
      #   @return [Symbol, Privy::Models::CustodialWalletChainType, nil]
      optional :chain_type, enum: -> { Privy::CustodialWalletChainType }

      # @!attribute policy_ids
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, address:, chain:, custody:, owner_id:, additional_signers: nil, chain_type: nil, policy_ids: nil)
      #   Information about a custodial wallet.
      #
      #   @param id [String]
      #
      #   @param address [String]
      #
      #   @param chain [Symbol, Privy::Models::CustodialWalletChain] The chain of the custodial wallet.
      #
      #   @param custody [Privy::Models::WalletCustodian] Information about the custodian managing this wallet.
      #
      #   @param owner_id [String, nil] A unique identifier for a key quorum.
      #
      #   @param additional_signers [Array<Privy::Models::WalletAdditionalSignerItem>] Additional signers for the wallet.
      #
      #   @param chain_type [Symbol, Privy::Models::CustodialWalletChainType] The chain type of the custodial wallet (deprecated).
      #
      #   @param policy_ids [Array<String>]
    end
  end
end
