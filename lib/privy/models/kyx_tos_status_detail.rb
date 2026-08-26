# frozen_string_literal: true

module Privy
  module Models
    class KyxTosStatusDetail < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of Terms of Service acceptance. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!attribute link
      #   ToS acceptance link, if pending.
      #
      #   @return [String, nil]
      optional :link, String

      # @!method initialize(status:, link: nil)
      #   Terms of Service acceptance status for a KYC or KYB flow.
      #
      #   @param status [String] Status of Terms of Service acceptance. Passthrough from the provider.
      #
      #   @param link [String] ToS acceptance link, if pending.
    end
  end
end
