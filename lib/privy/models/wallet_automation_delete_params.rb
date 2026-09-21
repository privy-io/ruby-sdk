# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::WalletAutomations#delete
    class WalletAutomationDeleteParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute automation_id
      #   ID of the wallet automation.
      #
      #   @return [String]
      required :automation_id, String

      # @!method initialize(automation_id:, request_options: {})
      #   @param automation_id [String] ID of the wallet automation.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
