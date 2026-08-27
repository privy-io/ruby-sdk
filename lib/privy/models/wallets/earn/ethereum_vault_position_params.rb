# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module Earn
        # @see Privy::Resources::Wallets::Earn::Ethereum#vault_position
        class EthereumVaultPositionParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

          # @!attribute vault_id
          #   The vault ID to get position for.
          #
          #   @return [String]
          required :vault_id, String

          # @!attribute include_archived
          #   Include archived wallets in lookup. Defaults to false.
          #
          #   @return [Boolean, nil]
          optional :include_archived, Privy::Internal::Type::Boolean

          # @!method initialize(wallet_id:, vault_id:, include_archived: nil, request_options: {})
          #   @param wallet_id [String] ID of the wallet.
          #
          #   @param vault_id [String] The vault ID to get position for.
          #
          #   @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
