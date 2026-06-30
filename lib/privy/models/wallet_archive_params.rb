# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#archive
    class WalletArchiveParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute wallet_id
      #   ID of the wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(wallet_id:, request_options: {})
      #   @param wallet_id [String] ID of the wallet.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
