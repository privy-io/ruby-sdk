# typed: strong

module Privy
  module Models
    class FundingConfigResponseSchema < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FundingConfigResponseSchema, Privy::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :cross_chain_bridging_enabled

      sig { returns(String) }
      attr_accessor :default_recommended_amount

      # A crypto currency identified by a CAIP-2 chain ID and optional asset.
      sig { returns(Privy::Currency) }
      attr_reader :default_recommended_currency

      sig { params(default_recommended_currency: Privy::Currency::OrHash).void }
      attr_writer :default_recommended_currency

      sig { returns(T::Array[Privy::FundingMethodEnum::TaggedSymbol]) }
      attr_accessor :methods_

      sig { returns(T::Array[Privy::FundingOption]) }
      attr_accessor :options

      sig { returns(T::Boolean) }
      attr_accessor :prompt_funding_on_wallet_creation

      # Configuration for funding and on-ramp options.
      sig do
        params(
          cross_chain_bridging_enabled: T::Boolean,
          default_recommended_amount: String,
          default_recommended_currency: Privy::Currency::OrHash,
          methods_: T::Array[Privy::FundingMethodEnum::OrSymbol],
          options: T::Array[Privy::FundingOption::OrHash],
          prompt_funding_on_wallet_creation: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        cross_chain_bridging_enabled:,
        default_recommended_amount:,
        # A crypto currency identified by a CAIP-2 chain ID and optional asset.
        default_recommended_currency:,
        methods_:,
        options:,
        prompt_funding_on_wallet_creation:
      )
      end

      sig do
        override.returns(
          {
            cross_chain_bridging_enabled: T::Boolean,
            default_recommended_amount: String,
            default_recommended_currency: Privy::Currency,
            methods_: T::Array[Privy::FundingMethodEnum::TaggedSymbol],
            options: T::Array[Privy::FundingOption],
            prompt_funding_on_wallet_creation: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
