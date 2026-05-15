# frozen_string_literal: true

module Privy
  module Models
    # Value to compare against in a policy condition. Can be a single string or an
    # array of strings.
    module ConditionValue
      extend Privy::Internal::Type::Union

      variant String

      variant -> { Privy::Models::ConditionValue::StringArray }

      # @!method self.variants
      #   @return [Array(String, Array<String>)]

      # @type [Privy::Internal::Type::Converter]
      StringArray = Privy::Internal::Type::ArrayOf[String]
    end
  end
end
