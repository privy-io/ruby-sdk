# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#pregenerate_wallets
    class UserPregenerateWalletsParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute user_id
      #   ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute wallets
      #
      #   @return [Array<Privy::Models::WalletCreationInput>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::WalletCreationInput] }

      # @!method initialize(user_id:, wallets:, request_options: {})
      #   @param user_id [String] ID of the user.
      #
      #   @param wallets [Array<Privy::Models::WalletCreationInput>]
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
