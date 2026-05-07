# typed: strong

module Privy
  module Models
    # Value to compare against in a policy condition. Can be a single string or an
    # array of strings.
    module ConditionValue
      extend Privy::Internal::Type::Union

      Variants = T.type_alias { T.any(String, T::Array[String]) }

      sig { override.returns(T::Array[Privy::ConditionValue::Variants]) }
      def self.variants
      end

      StringArray =
        T.let(
          Privy::Internal::Type::ArrayOf[String],
          Privy::Internal::Type::Converter
        )
    end
  end
end
