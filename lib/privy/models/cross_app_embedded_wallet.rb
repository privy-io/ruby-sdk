# frozen_string_literal: true

module Privy
  module Models
    class CrossAppEmbeddedWallet < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   An embedded wallet associated with a cross-app account.
      #
      #   @param address [String]
    end
  end
end
