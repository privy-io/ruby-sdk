# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module Earn
        # @see Privy::Resources::Wallets::Earn::Ethereum#vault_details
        class EthereumVaultDetailsParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute vault_id
          #   The Privy vault ID.
          #
          #   @return [String]
          required :vault_id, String

          # @!method initialize(vault_id:, request_options: {})
          #   @param vault_id [String] The Privy vault ID.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
