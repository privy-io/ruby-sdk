# frozen_string_literal: true

module Privy
  module Models
    module Users
      class MfaPasskeyPubKeyCredParam < Privy::Internal::Type::BaseModel
        # @!attribute alg
        #
        #   @return [Float]
        required :alg, Float

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Users::MfaPasskeyPubKeyCredParam::Type]
        required :type, enum: -> { Privy::Users::MfaPasskeyPubKeyCredParam::Type }

        # @!method initialize(alg:, type:)
        #   A public key credential parameter specifying the algorithm and credential type.
        #
        #   @param alg [Float]
        #   @param type [Symbol, Privy::Models::Users::MfaPasskeyPubKeyCredParam::Type]

        # @see Privy::Models::Users::MfaPasskeyPubKeyCredParam#type
        module Type
          extend Privy::Internal::Type::Enum

          PUBLIC_KEY = :"public-key"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
