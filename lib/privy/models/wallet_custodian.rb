# frozen_string_literal: true

module Privy
  module Models
    class WalletCustodian < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   The custodian responsible for the wallet.
      #
      #   @return [String]
      required :provider, String

      # @!attribute provider_user_id
      #   The resource ID of the beneficiary of the custodial wallet.
      #
      #   @return [String]
      required :provider_user_id, String

      # @!method initialize(provider:, provider_user_id:)
      #   Information about the custodian managing this wallet.
      #
      #   @param provider [String] The custodian responsible for the wallet.
      #
      #   @param provider_user_id [String] The resource ID of the beneficiary of the custodial wallet.
    end
  end
end
