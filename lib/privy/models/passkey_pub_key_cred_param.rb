# frozen_string_literal: true

module Privy
  module Models
    class PasskeyPubKeyCredParam < Privy::Internal::Type::BaseModel
      # @!attribute alg
      #
      #   @return [Float]
      required :alg, Float

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::PasskeyPubKeyCredParam::Type]
      required :type, enum: -> { Privy::PasskeyPubKeyCredParam::Type }

      # @!method initialize(alg:, type:)
      #   A public key credential parameter specifying the algorithm and credential type.
      #
      #   @param alg [Float]
      #   @param type [Symbol, Privy::Models::PasskeyPubKeyCredParam::Type]

      # @see Privy::Models::PasskeyPubKeyCredParam#type
      module Type
        extend Privy::Internal::Type::Enum

        PUBLIC_KEY = :"public-key"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
