# frozen_string_literal: true

module Privy
  module Models
    # The encryption type of the wallet to import. Currently only supports `HPKE`.
    module HpkeEncryption
      extend Privy::Internal::Type::Enum

      HPKE = :HPKE

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
