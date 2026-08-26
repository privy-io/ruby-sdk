# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountUsData < Privy::Internal::Type::BaseModel
      # @!attribute account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountUsData::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountUsData::Type }

      # @!attribute checking_or_savings
      #
      #   @return [String, nil]
      optional :checking_or_savings, String

      # @!method initialize(account_number:, routing_number:, type:, checking_or_savings: nil)
      #   US bank account data for an external fiat account.
      #
      #   @param account_number [String]
      #   @param routing_number [String]
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountUsData::Type]
      #   @param checking_or_savings [String]

      # @see Privy::Models::ExternalFiatAccountUsData#type
      module Type
        extend Privy::Internal::Type::Enum

        US = :us

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
