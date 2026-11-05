# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module Earn
        # @see Privy::Resources::Wallets::Earn::Tmmf#list_positions
        class TmmfListPositionsParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

          # @!attribute chain
          #   Chain the fund is held on, e.g. "ethereum_sepolia".
          #
          #   @return [String, nil]
          optional :chain, String

          # @!attribute cursor
          #   Cursor returned by the previous page.
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!attribute fund
          #   Fund ticker, e.g. "WTGXX". Case-insensitive.
          #
          #   @return [String, nil]
          optional :fund, String

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute provider
          #   The fund provider.
          #
          #   @return [Symbol, String, Privy::Models::Wallets::TmmfProvider, nil]
          optional :provider, union: -> { Privy::Wallets::TmmfProvider }

          # @!method initialize(wallet_id:, chain: nil, cursor: nil, fund: nil, limit: nil, provider: nil, request_options: {})
          #   @param wallet_id [String] ID of the wallet.
          #
          #   @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
          #
          #   @param cursor [String] Cursor returned by the previous page.
          #
          #   @param fund [String] Fund ticker, e.g. "WTGXX". Case-insensitive.
          #
          #   @param limit [Integer]
          #
          #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
