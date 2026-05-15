# typed: strong

module Privy
  module Models
    class SwapQuoteResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SwapQuoteResponse, Privy::Internal::AnyHash)
        end

      # Chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # Estimated amount of output token in base units.
      sig { returns(String) }
      attr_accessor :est_output_amount

      # Estimated gas cost in base units of the native token.
      sig { returns(String) }
      attr_accessor :gas_estimate

      # Amount of input token in base units.
      sig { returns(String) }
      attr_accessor :input_amount

      # Token address being sold.
      sig { returns(String) }
      attr_accessor :input_token

      # Minimum output amount accounting for slippage, in base units.
      sig { returns(String) }
      attr_accessor :minimum_output_amount

      # Token address being bought.
      sig { returns(String) }
      attr_accessor :output_token

      # Pricing data for a token swap.
      sig do
        params(
          caip2: String,
          est_output_amount: String,
          gas_estimate: String,
          input_amount: String,
          input_token: String,
          minimum_output_amount: String,
          output_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Chain identifier.
        caip2:,
        # Estimated amount of output token in base units.
        est_output_amount:,
        # Estimated gas cost in base units of the native token.
        gas_estimate:,
        # Amount of input token in base units.
        input_amount:,
        # Token address being sold.
        input_token:,
        # Minimum output amount accounting for slippage, in base units.
        minimum_output_amount:,
        # Token address being bought.
        output_token:
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            est_output_amount: String,
            gas_estimate: String,
            input_amount: String,
            input_token: String,
            minimum_output_amount: String,
            output_token: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
