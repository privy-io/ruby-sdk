# frozen_string_literal: true

module Privy
  module Models
    module Users
      module Earn
        # @see Privy::Resources::Users::Earn::Tmmf#get
        class TmmfGetParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute user_id
          #   ID of the Privy user.
          #
          #   @return [String]
          required :user_id, String

          # @!attribute provider
          #   The fund provider.
          #
          #   @return [Symbol, String, Privy::Models::Wallets::TmmfProvider, nil]
          optional :provider, union: -> { Privy::Wallets::TmmfProvider }

          # @!attribute wallet_id
          #   Only return the registration of this wallet.
          #
          #   @return [String, nil]
          optional :wallet_id, String

          # @!attribute wallets_cursor
          #   Cursor returned by the previous page.
          #
          #   @return [String, nil]
          optional :wallets_cursor, String

          # @!attribute wallets_limit
          #   Maximum number of wallet registrations to return.
          #
          #   @return [Integer, nil]
          optional :wallets_limit, Integer

          # @!method initialize(user_id:, provider: nil, wallet_id: nil, wallets_cursor: nil, wallets_limit: nil, request_options: {})
          #   @param user_id [String] ID of the Privy user.
          #
          #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
          #
          #   @param wallet_id [String] Only return the registration of this wallet.
          #
          #   @param wallets_cursor [String] Cursor returned by the previous page.
          #
          #   @param wallets_limit [Integer] Maximum number of wallet registrations to return.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
