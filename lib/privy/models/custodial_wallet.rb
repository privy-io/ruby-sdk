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

      # @!attribute chain_type
      #   The chain type of the custodial wallet.
      #
      #   @return [Symbol, Privy::Models::CustodialWalletChainType]
      required :chain_type, enum: -> { Privy::CustodialWalletChainType }

      # @!attribute custody
      #   Information about the custodian managing this wallet.
      #
      #   @return [Privy::Models::WalletCustodian]
      required :custody, -> { Privy::WalletCustodian }

      # @!attribute owner_id
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::WalletAdditionalSignerItem>, nil]
      optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem] }

      # @!attribute policy_ids
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, address:, chain_type:, custody:, owner_id:, additional_signers: nil, policy_ids: nil)
      #   Information about a custodial wallet.
      #
      #   @param id [String]
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::CustodialWalletChainType] The chain type of the custodial wallet.
      #
      #   @param custody [Privy::Models::WalletCustodian] Information about the custodian managing this wallet.
      #
      #   @param owner_id [String, nil]
      #
      #   @param additional_signers [Array<Privy::Models::WalletAdditionalSignerItem>] Additional signers for the wallet.
      #
      #   @param policy_ids [Array<String>]
    end
  end
end
