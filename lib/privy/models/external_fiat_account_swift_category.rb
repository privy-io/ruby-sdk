# frozen_string_literal: true

module Privy
  module Models
    # Business relationship between the payer and the SWIFT account owner.
    module ExternalFiatAccountSwiftCategory
      extend Privy::Internal::Type::Enum

      CLIENT = :client
      PARENT_COMPANY = :parent_company
      SUBSIDIARY = :subsidiary
      SUPPLIER = :supplier

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
