# frozen_string_literal: true

module Privy
  module Models
    # @type [Privy::Internal::Type::Converter]
    AdditionalSignerInput = Privy::Internal::Type::ArrayOf[-> { Privy::AdditionalSignerItemInput }]
  end
end
