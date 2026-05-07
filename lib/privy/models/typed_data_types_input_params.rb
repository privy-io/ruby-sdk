# frozen_string_literal: true

module Privy
  module Models
    # @type [Privy::Internal::Type::Converter]
    TypedDataTypesInputParams =
      Privy::Internal::Type::HashOf[-> { Privy::Internal::Type::ArrayOf[Privy::TypedDataTypeFieldInput] }]
  end
end
