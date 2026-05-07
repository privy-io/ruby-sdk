# typed: strong

module Privy
  module Models
    class FundingOption < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::FundingOption, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :provider

      # A funding option with method and provider.
      sig do
        params(method_: String, provider: String).returns(T.attached_class)
      end
      def self.new(method_:, provider:)
      end

      sig { override.returns({ method_: String, provider: String }) }
      def to_hash
      end
    end
  end
end
